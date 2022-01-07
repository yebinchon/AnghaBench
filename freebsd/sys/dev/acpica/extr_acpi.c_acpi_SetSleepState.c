
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_softc {int acpi_dev; } ;
typedef int ACPI_STATUS ;


 int acpi_EnterSleepState (struct acpi_softc*,int) ;
 int device_printf (int ,char*) ;

ACPI_STATUS
acpi_SetSleepState(struct acpi_softc *sc, int state)
{
    static int once;

    if (!once) {
 device_printf(sc->acpi_dev,
"warning: acpi_SetSleepState() deprecated, need to update your software\n");
 once = 1;
    }
    return (acpi_EnterSleepState(sc, state));
}
