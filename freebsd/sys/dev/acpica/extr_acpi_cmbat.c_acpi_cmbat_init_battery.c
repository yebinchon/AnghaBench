
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_cmbat_softc {int bif; int bst; int bst_lastupdated; } ;
typedef scalar_t__ device_t ;


 int ACPI_CMBAT_RETRY_MAX ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int ACPI_VPRINT (scalar_t__,int ,char*,...) ;
 int AcpiOsSleep (int) ;
 int acpi_BatteryIsPresent (scalar_t__) ;
 scalar_t__ acpi_battery_bif_valid (int *) ;
 scalar_t__ acpi_battery_bst_valid (int *) ;
 int acpi_cmbat_get_bif (scalar_t__) ;
 int acpi_cmbat_get_bst (scalar_t__) ;
 int acpi_device_get_parent_softc (scalar_t__) ;
 int cmbat ;
 struct acpi_cmbat_softc* device_get_softc (scalar_t__) ;
 int device_is_attached (scalar_t__) ;
 int timespecclear (int *) ;

__attribute__((used)) static void
acpi_cmbat_init_battery(void *arg)
{
    struct acpi_cmbat_softc *sc;
    int retry, valid;
    device_t dev;

    dev = (device_t)arg;
    ACPI_VPRINT(dev, acpi_device_get_parent_softc(dev),
  "battery initialization start\n");






    for (retry = 0; retry < ACPI_CMBAT_RETRY_MAX; retry++, AcpiOsSleep(10000)) {
 ACPI_SERIAL_BEGIN(cmbat);
 sc = device_get_softc(dev);
 if (sc == ((void*)0)) {
     ACPI_SERIAL_END(cmbat);
     return;
 }

 if (!acpi_BatteryIsPresent(dev) || !device_is_attached(dev)) {
     ACPI_SERIAL_END(cmbat);
     continue;
 }





 if (retry == 0 || !acpi_battery_bst_valid(&sc->bst)) {
     timespecclear(&sc->bst_lastupdated);
     acpi_cmbat_get_bst(dev);
 }
 if (retry == 0 || !acpi_battery_bif_valid(&sc->bif))
     acpi_cmbat_get_bif(dev);

 valid = acpi_battery_bst_valid(&sc->bst) &&
     acpi_battery_bif_valid(&sc->bif);
 ACPI_SERIAL_END(cmbat);

 if (valid)
     break;
    }

    if (retry == ACPI_CMBAT_RETRY_MAX) {
 ACPI_VPRINT(dev, acpi_device_get_parent_softc(dev),
      "battery initialization failed, giving up\n");
    } else {
 ACPI_VPRINT(dev, acpi_device_get_parent_softc(dev),
      "battery initialization done, tried %d times\n", retry + 1);
    }
}
