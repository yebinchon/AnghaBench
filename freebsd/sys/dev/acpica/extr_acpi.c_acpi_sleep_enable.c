
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_softc {int acpi_sleep_disabled; } ;


 int ACPI_LOCK_ASSERT (int ) ;
 int ACPI_MINIMUM_AWAKETIME ;
 int AcpiGbl_SystemAwakeAndRunning ;
 int FALSE ;
 int acpi ;
 int acpi_sleep_timer ;
 int callout_schedule (int *,int) ;
 int hz ;

__attribute__((used)) static void
acpi_sleep_enable(void *arg)
{
    struct acpi_softc *sc = (struct acpi_softc *)arg;

    ACPI_LOCK_ASSERT(acpi);


    if (!AcpiGbl_SystemAwakeAndRunning) {
 callout_schedule(&acpi_sleep_timer, hz * ACPI_MINIMUM_AWAKETIME);
 return;
    }

    sc->acpi_sleep_disabled = FALSE;
}
