
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_softc {int acpi_dev; } ;
struct TYPE_2__ {int Flags; } ;


 int ACPI_EVENT_POWER_BUTTON ;
 int ACPI_EVENT_SLEEP_BUTTON ;
 int ACPI_FADT_POWER_BUTTON ;
 int ACPI_FADT_SLEEP_BUTTON ;
 int AcpiClearEvent (int ) ;
 TYPE_1__ AcpiGbl_FADT ;
 int AcpiInstallFixedEventHandler (int ,int ,struct acpi_softc*) ;
 int acpi_event_power_button_sleep ;
 int acpi_event_sleep_button_sleep ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
acpi_enable_fixed_events(struct acpi_softc *sc)
{
    static int first_time = 1;


    if ((AcpiGbl_FADT.Flags & ACPI_FADT_POWER_BUTTON) == 0) {
 AcpiClearEvent(ACPI_EVENT_POWER_BUTTON);
 AcpiInstallFixedEventHandler(ACPI_EVENT_POWER_BUTTON,
         acpi_event_power_button_sleep, sc);
 if (first_time)
     device_printf(sc->acpi_dev, "Power Button (fixed)\n");
    }
    if ((AcpiGbl_FADT.Flags & ACPI_FADT_SLEEP_BUTTON) == 0) {
 AcpiClearEvent(ACPI_EVENT_SLEEP_BUTTON);
 AcpiInstallFixedEventHandler(ACPI_EVENT_SLEEP_BUTTON,
         acpi_event_sleep_button_sleep, sc);
 if (first_time)
     device_printf(sc->acpi_dev, "Sleep Button (fixed)\n");
    }

    first_time = 0;
}
