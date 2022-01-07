
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 int AE_OK ;
 scalar_t__ AcpiGbl_SystemAwakeAndRunning ;
 int acpi_wake_run_prep (int ,int) ;
 int acpi_wake_sleep_prep (int ,int) ;

__attribute__((used)) static ACPI_STATUS
acpi_wake_prep(ACPI_HANDLE handle, UINT32 level, void *context, void **status)
{
    int sstate;


    sstate = *(int *)context;
    if (AcpiGbl_SystemAwakeAndRunning)
 acpi_wake_sleep_prep(handle, sstate);
    else
 acpi_wake_run_prep(handle, sstate);
    return (AE_OK);
}
