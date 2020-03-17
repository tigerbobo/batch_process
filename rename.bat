@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
COLOR 0A
TITLE keith batch rename tool

ECHO.
ECHO 1. all file
ECHO 2. txt
ECHO 3. png
ECHO 4. other
ECHO.
CHOICE /C 1234 /m "your choice is: "
IF %ERRORlEVEL% equ 1 SET suffix=*
IF %ERRORlEVEL% equ 2 SET suffix=txt
IF %ERRORlEVEL% equ 3 SET suffix=png
IF %ERRORlEVEL% equ 4 (
ECHO.
SET /P suffix="Please enter the suffix names:"
)
ECHO.
SET /p prefix="Please enter the beginning of the file name:"
ECHO.
ECHO renameing...
ECHO.
SET /a index=0
FOR %%i in (*.!suffix!) do (
    SET name=!prefix!!index!.!suffix!
    REN "%%i" !name!
    SET /a index=!index!+1
)
IF %ERRORlEVEL% equ 0 (
    ECHO OK
) ELSE (
    ECHO ERROR
)
ECHO.
PAUSE
