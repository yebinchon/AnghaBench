
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_prw_data {int gpe_bit; int gpe_handle; } ;
typedef int device_t ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FLAG_WAKE_ENABLED ;
 int ACPI_GPE_DISABLE ;
 int ACPI_GPE_ENABLE ;
 int AcpiSetGpeWakeMask (int ,int ,int ) ;
 int ENXIO ;
 int acpi_get_flags (int ) ;
 int acpi_get_handle (int ) ;
 scalar_t__ acpi_parse_prw (int ,struct acpi_prw_data*) ;
 int acpi_set_flags (int ,int) ;
 int device_printf (int ,char*) ;

int
acpi_wake_set_enable(device_t dev, int enable)
{
    struct acpi_prw_data prw;
    ACPI_STATUS status;
    int flags;


    if (acpi_parse_prw(acpi_get_handle(dev), &prw) != 0)
 return (ENXIO);

    flags = acpi_get_flags(dev);
    if (enable) {
 status = AcpiSetGpeWakeMask(prw.gpe_handle, prw.gpe_bit,
     ACPI_GPE_ENABLE);
 if (ACPI_FAILURE(status)) {
     device_printf(dev, "enable wake failed\n");
     return (ENXIO);
 }
 acpi_set_flags(dev, flags | ACPI_FLAG_WAKE_ENABLED);
    } else {
 status = AcpiSetGpeWakeMask(prw.gpe_handle, prw.gpe_bit,
     ACPI_GPE_DISABLE);
 if (ACPI_FAILURE(status)) {
     device_printf(dev, "disable wake failed\n");
     return (ENXIO);
 }
 acpi_set_flags(dev, flags & ~ACPI_FLAG_WAKE_ENABLED);
    }

    return (0);
}
