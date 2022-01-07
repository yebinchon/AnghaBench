
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oeminfo; int type; int serial; int model; int gra2; int gra1; int lcap; int wcap; int dvol; int btech; int lfcap; int dcap; int units; } ;
struct acpi_cmbat_softc {TYPE_1__ bif; } ;
struct acpi_bif {int oeminfo; int type; int serial; int model; int gra2; int gra1; int lcap; int wcap; int dvol; int btech; int lfcap; int dcap; int units; } ;
typedef int device_t ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int cmbat ;
 struct acpi_cmbat_softc* device_get_softc (int ) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int
acpi_cmbat_bif(device_t dev, struct acpi_bif *bifp)
{
    struct acpi_cmbat_softc *sc;

    sc = device_get_softc(dev);







    ACPI_SERIAL_BEGIN(cmbat);
    bifp->units = sc->bif.units;
    bifp->dcap = sc->bif.dcap;
    bifp->lfcap = sc->bif.lfcap;
    bifp->btech = sc->bif.btech;
    bifp->dvol = sc->bif.dvol;
    bifp->wcap = sc->bif.wcap;
    bifp->lcap = sc->bif.lcap;
    bifp->gra1 = sc->bif.gra1;
    bifp->gra2 = sc->bif.gra2;
    strncpy(bifp->model, sc->bif.model, sizeof(sc->bif.model));
    strncpy(bifp->serial, sc->bif.serial, sizeof(sc->bif.serial));
    strncpy(bifp->type, sc->bif.type, sizeof(sc->bif.type));
    strncpy(bifp->oeminfo, sc->bif.oeminfo, sizeof(sc->bif.oeminfo));
    ACPI_SERIAL_END(cmbat);

    return (0);
}
