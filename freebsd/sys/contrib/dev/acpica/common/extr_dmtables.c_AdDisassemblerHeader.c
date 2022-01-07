
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef scalar_t__ UINT8 ;


 char* ACPI_COMMON_HEADER (int ,char*) ;
 scalar_t__ ACPI_IS_AML_TABLE ;
 int AML_DISASSEMBLER_NAME ;
 scalar_t__ AcpiGbl_CstyleDisassembly ;
 int AcpiOsPrintf (char*,...) ;
 int ctime (int *) ;
 int time (int *) ;

void
AdDisassemblerHeader (
    char *Filename,
    UINT8 TableType)
{
    time_t Timer;


    time (&Timer);



    AcpiOsPrintf ("/*\n");
    AcpiOsPrintf (ACPI_COMMON_HEADER (AML_DISASSEMBLER_NAME, " * "));

    if (TableType == ACPI_IS_AML_TABLE)
    {
        if (AcpiGbl_CstyleDisassembly)
        {
            AcpiOsPrintf (
                " * Disassembling to symbolic ASL+ operators\n"
                " *\n");
        }
        else
        {
            AcpiOsPrintf (
                " * Disassembling to non-symbolic legacy ASL operators\n"
                " *\n");
        }
    }

    AcpiOsPrintf (" * Disassembly of %s, %s", Filename, ctime (&Timer));
    AcpiOsPrintf (" *\n");
}
