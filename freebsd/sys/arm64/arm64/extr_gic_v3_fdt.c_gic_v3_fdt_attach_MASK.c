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
struct TYPE_2__ {int nregions; } ;
struct gic_v3_softc {scalar_t__ gic_nchildren; int /*<<< orphan*/  gic_children; int /*<<< orphan*/ * gic_pic; TYPE_1__ gic_redists; int /*<<< orphan*/  gic_bus; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  redist_regions ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GIC_BUS_FDT ; 
 scalar_t__ GIC_FIRST_SGI ; 
 scalar_t__ GIC_LAST_SGI ; 
 int /*<<< orphan*/  FUNC0 (intptr_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int*,int) ; 
 intptr_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm_gic_v3_intr ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 struct gic_v3_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,intptr_t,int /*<<< orphan*/ ,struct gic_v3_softc*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct gic_v3_softc *sc;
	pcell_t redist_regions;
	intptr_t xref;
	int err;

	sc = FUNC4(dev);
	sc->dev = dev;
	sc->gic_bus = GIC_BUS_FDT;

	/*
	 * Recover number of the Re-Distributor regions.
	 */
	if (FUNC1(FUNC11(dev), "#redistributor-regions",
	    &redist_regions, sizeof(redist_regions)) <= 0)
		sc->gic_redists.nregions = 1;
	else
		sc->gic_redists.nregions = redist_regions;

	err = FUNC6(dev);
	if (err != 0)
		goto error;

	xref = FUNC2(FUNC11(dev));
	sc->gic_pic = FUNC10(dev, xref);
	if (sc->gic_pic == NULL) {
		FUNC5(dev, "could not register PIC\n");
		err = ENXIO;
		goto error;
	}

	/* Register xref */
	FUNC0(xref, dev);

	if (FUNC9(dev, xref, arm_gic_v3_intr, sc,
	    GIC_LAST_SGI - GIC_FIRST_SGI + 1) != 0) {
		err = ENXIO;
		goto error;
	}

	/*
	 * Try to register ITS to this GIC.
	 * GIC will act as a bus in that case.
	 * Failure here will not affect main GIC functionality.
	 */
	if (FUNC8(dev) != 0) {
		if (bootverbose) {
			FUNC5(dev,
			    "Failed to attach ITS to this GIC\n");
		}
	}

	if (FUNC3(dev, &sc->gic_children, &sc->gic_nchildren) != 0)
		sc->gic_nchildren = 0;

	return (err);

error:
	if (bootverbose) {
		FUNC5(dev,
		    "Failed to attach. Error %d\n", err);
	}
	/* Failure so free resources */
	FUNC7(dev);

	return (err);
}