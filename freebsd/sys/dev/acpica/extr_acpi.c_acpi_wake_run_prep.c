
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_prw_data {int lowest_wake; int gpe_bit; int gpe_handle; } ;
typedef int * device_t ;
typedef int ACPI_HANDLE ;


 int ACPI_FLAG_WAKE_ENABLED ;
 int ACPI_GPE_ENABLE ;
 int AcpiSetGpeWakeMask (int ,int ,int ) ;
 int ENXIO ;
 int acpi_SetInteger (int ,char*,int ) ;
 int * acpi_get_device (int ) ;
 int acpi_get_flags (int *) ;
 int acpi_name (int ) ;
 scalar_t__ acpi_parse_prw (int ,struct acpi_prw_data*) ;
 int acpi_pwr_wake_enable (int ,int ) ;
 scalar_t__ bootverbose ;
 int device_printf (int *,char*,int ) ;

__attribute__((used)) static int
acpi_wake_run_prep(ACPI_HANDLE handle, int sstate)
{
    struct acpi_prw_data prw;
    device_t dev;





    if (acpi_parse_prw(handle, &prw) != 0)
 return (ENXIO);
    dev = acpi_get_device(handle);
    if (dev == ((void*)0) || (acpi_get_flags(dev) & ACPI_FLAG_WAKE_ENABLED) == 0)
 return (0);






    if (sstate > prw.lowest_wake) {
 AcpiSetGpeWakeMask(prw.gpe_handle, prw.gpe_bit, ACPI_GPE_ENABLE);
 if (bootverbose)
     device_printf(dev, "run_prep re-enabled %s\n", acpi_name(handle));
    } else {
 acpi_SetInteger(handle, "_PSW", 0);
 acpi_pwr_wake_enable(handle, 0);
 if (bootverbose)
     device_printf(dev, "run_prep cleaned up for %s\n",
  acpi_name(handle));
    }

    return (0);
}
