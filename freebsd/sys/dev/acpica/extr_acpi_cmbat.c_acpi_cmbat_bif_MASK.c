#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  oeminfo; int /*<<< orphan*/  type; int /*<<< orphan*/  serial; int /*<<< orphan*/  model; int /*<<< orphan*/  gra2; int /*<<< orphan*/  gra1; int /*<<< orphan*/  lcap; int /*<<< orphan*/  wcap; int /*<<< orphan*/  dvol; int /*<<< orphan*/  btech; int /*<<< orphan*/  lfcap; int /*<<< orphan*/  dcap; int /*<<< orphan*/  units; } ;
struct acpi_cmbat_softc {TYPE_1__ bif; } ;
struct acpi_bif {int /*<<< orphan*/  oeminfo; int /*<<< orphan*/  type; int /*<<< orphan*/  serial; int /*<<< orphan*/  model; int /*<<< orphan*/  gra2; int /*<<< orphan*/  gra1; int /*<<< orphan*/  lcap; int /*<<< orphan*/  wcap; int /*<<< orphan*/  dvol; int /*<<< orphan*/  btech; int /*<<< orphan*/  lfcap; int /*<<< orphan*/  dcap; int /*<<< orphan*/  units; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmbat ; 
 struct acpi_cmbat_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, struct acpi_bif *bifp)
{
    struct acpi_cmbat_softc *sc;

    sc = FUNC2(dev);

    /*
     * Just copy the data.  The only value that should change is the
     * last-full capacity, so we only update when we get a notify that says
     * the info has changed.  Many systems apparently take a long time to
     * process a _BIF call so we avoid it if possible.
     */
    FUNC0(cmbat);
    bifp->units = sc->bif.units;
    bifp->dcap = sc->bif.dcap;
    bifp->lfcap = sc->bif.lfcap;
    bifp->btech = sc->bif.btech;
    bifp->dvol = sc->bif.dvol;
    bifp->wcap = sc->bif.wcap;
    bifp->lcap = sc->bif.lcap;
    bifp->gra1 = sc->bif.gra1;
    bifp->gra2 = sc->bif.gra2;
    FUNC3(bifp->model, sc->bif.model, sizeof(sc->bif.model));
    FUNC3(bifp->serial, sc->bif.serial, sizeof(sc->bif.serial));
    FUNC3(bifp->type, sc->bif.type, sizeof(sc->bif.type));
    FUNC3(bifp->oeminfo, sc->bif.oeminfo, sizeof(sc->bif.oeminfo));
    FUNC1(cmbat);

    return (0);
}