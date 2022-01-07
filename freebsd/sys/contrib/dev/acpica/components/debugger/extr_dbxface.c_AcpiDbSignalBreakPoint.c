
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_WALK_STATE ;


 int AcpiGbl_CmSingleStep ;
 scalar_t__ AcpiGbl_DbThreadId ;
 scalar_t__ AcpiOsGetThreadId () ;
 int AcpiOsPrintf (char*) ;
 int TRUE ;

void
AcpiDbSignalBreakPoint (
    ACPI_WALK_STATE *WalkState)
{


    if (AcpiGbl_DbThreadId != AcpiOsGetThreadId ())
    {
        return;
    }







    AcpiGbl_CmSingleStep = TRUE;
    AcpiOsPrintf ("**break** Executed AML BreakPoint opcode\n");
}
