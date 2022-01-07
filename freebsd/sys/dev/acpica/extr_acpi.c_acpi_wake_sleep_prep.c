
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_prw_data {int lowest_wake; int gpe_bit; int gpe_handle; } ;
typedef scalar_t__ device_t ;
typedef int ACPI_HANDLE ;


 int ACPI_FLAG_WAKE_ENABLED ;
 int ACPI_GPE_DISABLE ;
 int AcpiSetGpeWakeMask (int ,int ,int ) ;
 int ENXIO ;
 int acpi_SetInteger (int ,char*,int) ;
 scalar_t__ acpi_get_device (int ) ;
 int acpi_get_flags (scalar_t__) ;
 int acpi_name (int ) ;
 scalar_t__ acpi_parse_prw (int ,struct acpi_prw_data*) ;
 int acpi_pwr_wake_enable (int ,int) ;
 scalar_t__ bootverbose ;
 int device_printf (scalar_t__,char*,int ,int) ;

__attribute__((used)) static int
acpi_wake_sleep_prep(ACPI_HANDLE handle, int sstate)
{
    struct acpi_prw_data prw;
    device_t dev;


    if (acpi_parse_prw(handle, &prw) != 0)
 return (ENXIO);
    dev = acpi_get_device(handle);
    if (sstate > prw.lowest_wake) {
 AcpiSetGpeWakeMask(prw.gpe_handle, prw.gpe_bit, ACPI_GPE_DISABLE);
 if (bootverbose)
     device_printf(dev, "wake_prep disabled wake for %s (S%d)\n",
  acpi_name(handle), sstate);
    } else if (dev && (acpi_get_flags(dev) & ACPI_FLAG_WAKE_ENABLED) != 0) {
 acpi_pwr_wake_enable(handle, 1);
 acpi_SetInteger(handle, "_PSW", 1);
 if (bootverbose)
     device_printf(dev, "wake_prep enabled for %s (S%d)\n",
  acpi_name(handle), sstate);
    }

    return (0);
}
