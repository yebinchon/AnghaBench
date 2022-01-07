
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_softc {int acpi_next_sstate; int acpi_dev; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_EnterSleepState (struct acpi_softc*,int ) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static void
acpi_sleep_force_task(void *context)
{
    struct acpi_softc *sc = (struct acpi_softc *)context;

    if (ACPI_FAILURE(acpi_EnterSleepState(sc, sc->acpi_next_sstate)))
 device_printf(sc->acpi_dev, "force sleep state S%d failed\n",
     sc->acpi_next_sstate);
}
