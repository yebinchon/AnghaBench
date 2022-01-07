
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_softc {int acpi_dev; scalar_t__ acpi_do_disable; scalar_t__ acpi_handle_reboot; } ;
typedef int register_t ;
typedef scalar_t__ ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_STATE_S5 ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ AE_NOT_EXIST ;
 scalar_t__ AcpiEnterSleepState (int ) ;
 scalar_t__ AcpiEnterSleepStatePrep (int ) ;
 int AcpiFormatException (scalar_t__) ;
 scalar_t__ AcpiReset () ;
 int AcpiTerminate () ;
 int DELAY (int) ;
 int RB_HALT ;
 int RB_POWEROFF ;
 int device_printf (int ,char*,...) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int * panicstr ;

__attribute__((used)) static void
acpi_shutdown_final(void *arg, int howto)
{
    struct acpi_softc *sc = (struct acpi_softc *)arg;
    register_t intr;
    ACPI_STATUS status;






    if ((howto & RB_POWEROFF) != 0) {
 status = AcpiEnterSleepStatePrep(ACPI_STATE_S5);
 if (ACPI_FAILURE(status)) {
     device_printf(sc->acpi_dev, "AcpiEnterSleepStatePrep failed - %s\n",
  AcpiFormatException(status));
     return;
 }
 device_printf(sc->acpi_dev, "Powering system off\n");
 intr = intr_disable();
 status = AcpiEnterSleepState(ACPI_STATE_S5);
 if (ACPI_FAILURE(status)) {
     intr_restore(intr);
     device_printf(sc->acpi_dev, "power-off failed - %s\n",
  AcpiFormatException(status));
 } else {
     DELAY(1000000);
     intr_restore(intr);
     device_printf(sc->acpi_dev, "power-off failed - timeout\n");
 }
    } else if ((howto & RB_HALT) == 0 && sc->acpi_handle_reboot) {

 status = AcpiReset();
 if (ACPI_SUCCESS(status)) {
     DELAY(1000000);
     device_printf(sc->acpi_dev, "reset failed - timeout\n");
 } else if (status != AE_NOT_EXIST)
     device_printf(sc->acpi_dev, "reset failed - %s\n",
  AcpiFormatException(status));
    } else if (sc->acpi_do_disable && panicstr == ((void*)0)) {




 device_printf(sc->acpi_dev, "Shutting down\n");
 AcpiTerminate();
    }
}
