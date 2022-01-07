
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef scalar_t__ ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 int ACPI_D_STATES_MAX ;
 int ACPI_STATE_D0 ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 int AcpiFormatException (scalar_t__) ;
 int EINVAL ;
 int * acpi_get_handle (int ) ;
 int acpi_name (int *) ;
 scalar_t__ acpi_pwr_switch_consumer (int *,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,int ,...) ;

__attribute__((used)) static int
acpi_set_powerstate(device_t child, int state)
{
    ACPI_HANDLE h;
    ACPI_STATUS status;

    h = acpi_get_handle(child);
    if (state < ACPI_STATE_D0 || state > ACPI_D_STATES_MAX)
 return (EINVAL);
    if (h == ((void*)0))
 return (0);


    status = acpi_pwr_switch_consumer(h, state);
    if (ACPI_SUCCESS(status)) {
 if (bootverbose)
     device_printf(child, "set ACPI power state D%d on %s\n",
  state, acpi_name(h));
    } else if (status != AE_NOT_FOUND)
 device_printf(child,
     "failed to set ACPI power state D%d on %s: %s\n", state,
     acpi_name(h), AcpiFormatException(status));

    return (0);
}
