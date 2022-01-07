
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int ACPI_CLEAR_CHAR () ;
 int putchar (char) ;

__attribute__((used)) static void
AcpiAcClearLine (
    UINT32 EndOfLine,
    UINT32 CursorPosition)
{
    UINT32 i;


    if (CursorPosition < EndOfLine)
    {


        for (i = 0; i < (EndOfLine - CursorPosition); i++)
        {
            putchar (' ');
        }
    }



    for (; EndOfLine > 0; EndOfLine--)
    {
        ACPI_CLEAR_CHAR ();
    }
}
