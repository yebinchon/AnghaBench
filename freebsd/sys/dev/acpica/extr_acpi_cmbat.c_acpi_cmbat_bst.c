
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int volt; int cap; int rate; int state; } ;
struct acpi_cmbat_softc {TYPE_1__ bst; } ;
struct acpi_bst {int state; int volt; int cap; int rate; } ;
typedef int device_t ;


 int ACPI_BATT_STAT_NOT_PRESENT ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 scalar_t__ acpi_BatteryIsPresent (int ) ;
 int acpi_cmbat_get_bst (int ) ;
 int cmbat ;
 struct acpi_cmbat_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_cmbat_bst(device_t dev, struct acpi_bst *bstp)
{
    struct acpi_cmbat_softc *sc;

    sc = device_get_softc(dev);

    ACPI_SERIAL_BEGIN(cmbat);
    if (acpi_BatteryIsPresent(dev)) {
 acpi_cmbat_get_bst(dev);
 bstp->state = sc->bst.state;
 bstp->rate = sc->bst.rate;
 bstp->cap = sc->bst.cap;
 bstp->volt = sc->bst.volt;
    } else
 bstp->state = ACPI_BATT_STAT_NOT_PRESENT;
    ACPI_SERIAL_END(cmbat);

    return (0);
}
