
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AcpiGbl_DbCommandComplete ;
 int AcpiGbl_DbCommandReady ;
 scalar_t__ AcpiGbl_DbCommandSignalsInitialized ;
 int AcpiOsDeleteMutex (int ) ;

void
AcpiOsTerminateDebugger (
    void)
{

    if (AcpiGbl_DbCommandSignalsInitialized)
    {
        AcpiOsDeleteMutex (AcpiGbl_DbCommandReady);
        AcpiOsDeleteMutex (AcpiGbl_DbCommandComplete);
    }
}
