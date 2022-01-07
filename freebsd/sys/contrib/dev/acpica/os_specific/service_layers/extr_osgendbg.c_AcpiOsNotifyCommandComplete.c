
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int AE_OK ;
 int AcpiGbl_DbCommandComplete ;
 scalar_t__ AcpiGbl_DebuggerConfiguration ;
 int AcpiOsReleaseMutex (int ) ;
 scalar_t__ DEBUGGER_MULTI_THREADED ;

ACPI_STATUS
AcpiOsNotifyCommandComplete (
    void)
{

    if (AcpiGbl_DebuggerConfiguration == DEBUGGER_MULTI_THREADED)
    {
        AcpiOsReleaseMutex (AcpiGbl_DbCommandComplete);
    }
    return (AE_OK);
}
