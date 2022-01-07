
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_PARSE_OBJECT ;


 int AcpiGbl_StepToNextCall ;
 int AcpiOsPrintf (char*) ;
 int TRUE ;

void
AcpiDbSetMethodCallBreakpoint (
    ACPI_PARSE_OBJECT *Op)
{


    if (!Op)
    {
        AcpiOsPrintf ("There is no method currently executing\n");
        return;
    }

    AcpiGbl_StepToNextCall = TRUE;
}
