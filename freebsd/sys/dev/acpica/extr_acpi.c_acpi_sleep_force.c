
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_softc {int acpi_dev; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiOsExecute (int ,int ,struct acpi_softc*) ;
 int OSL_NOTIFY_HANDLER ;
 int acpi_sleep_force_task ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
acpi_sleep_force(void *arg)
{
    struct acpi_softc *sc = (struct acpi_softc *)arg;

    device_printf(sc->acpi_dev,
 "suspend request timed out, forcing sleep now\n");




    if (ACPI_FAILURE(AcpiOsExecute(OSL_NOTIFY_HANDLER,
 acpi_sleep_force_task, sc)))
 device_printf(sc->acpi_dev, "AcpiOsExecute() for sleeping failed\n");
}
