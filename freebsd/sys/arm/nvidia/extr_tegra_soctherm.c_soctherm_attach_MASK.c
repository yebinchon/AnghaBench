#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct soctherm_softc {int ntsensors; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * soctherm_clk; int /*<<< orphan*/ * tsensor_clk; int /*<<< orphan*/ * irq_ih; int /*<<< orphan*/  dev; scalar_t__ tsensors; } ;
struct soctherm_shared_cal {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TSENSOR_HOTSPOT_OFF ; 
 int /*<<< orphan*/  TSENSOR_HOTSPOT_OFF_T124 ; 
 int /*<<< orphan*/  TSENSOR_PDIV ; 
 int /*<<< orphan*/  TSENSOR_PDIV_T124 ; 
 int /*<<< orphan*/  FUNC2 (struct soctherm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct soctherm_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct soctherm_softc*,struct soctherm_shared_cal*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct soctherm_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct soctherm_softc*,scalar_t__,struct soctherm_shared_cal*) ; 
 int /*<<< orphan*/  soctherm_sysctl_ctx ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ t124_tsensors ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
	struct soctherm_softc *sc;
	phandle_t node;
	int i, rid, rv;
	struct soctherm_shared_cal shared_calib;

	sc = FUNC10(dev);
	sc->dev = dev;
	node = FUNC18(sc->dev);

	rid = 0;
	sc->mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC11(dev, "Cannot allocate memory resources\n");
		goto fail;
	}

	rid = 0;
	sc->irq_res = FUNC3(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC11(dev, "Cannot allocate IRQ resources\n");
		goto fail;
	}

/*
	if ((bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC,
	    soctherm_intr, NULL, sc, &sc->irq_ih))) {
		device_printf(dev,
		    "WARNING: unable to register interrupt handler\n");
		goto fail;
	}
*/

	/* OWF resources */
	rv = FUNC15(dev, 0, "soctherm", &sc->reset);
	if (rv != 0) {
		FUNC11(dev, "Cannot get fuse reset\n");
		goto fail;
	}
	rv = FUNC8(dev, 0, "tsensor", &sc->tsensor_clk);
	if (rv != 0) {
		FUNC11(dev, "Cannot get 'tsensor' clock: %d\n", rv);
		goto fail;
	}
	rv = FUNC8(dev, 0, "soctherm", &sc->soctherm_clk);
	if (rv != 0) {
		FUNC11(dev, "Cannot get 'soctherm' clock: %d\n", rv);
		goto fail;
	}

	rv = FUNC13(sc->reset);
	if (rv != 0) {
		FUNC11(dev, "Cannot assert reset\n");
		goto fail;
	}
	rv = FUNC7(sc->tsensor_clk);
	if (rv != 0) {
		FUNC11(dev, "Cannot enable 'tsensor' clock: %d\n", rv);
		goto fail;
	}
	rv = FUNC7(sc->soctherm_clk);
	if (rv != 0) {
		FUNC11(dev, "Cannot enable 'soctherm' clock: %d\n", rv);
		goto fail;
	}
	rv = FUNC14(sc->reset);
	if (rv != 0) {
		FUNC11(dev, "Cannot clear reset\n");
		goto fail;
	}

	/* Tegra 124 */
	sc->tsensors = t124_tsensors;
	sc->ntsensors = FUNC17(t124_tsensors);
	FUNC12(sc, &shared_calib);

	FUNC2(sc, TSENSOR_PDIV, TSENSOR_PDIV_T124);
	FUNC2(sc, TSENSOR_HOTSPOT_OFF, TSENSOR_HOTSPOT_OFF_T124);

	for (i = 0; i < sc->ntsensors; i++)
		FUNC20(sc, sc->tsensors + i, &shared_calib);

	rv = FUNC19(sc);
	if (rv != 0) {
		FUNC11(sc->dev, "Cannot initialize sysctls\n");
		goto fail;
	}

	FUNC0(FUNC1(node), dev);
	return (FUNC4(dev));

fail:
	if (sc->irq_ih != NULL)
		FUNC6(dev, sc->irq_res, sc->irq_ih);
	FUNC21(&soctherm_sysctl_ctx);
	if (sc->tsensor_clk != NULL)
		FUNC9(sc->tsensor_clk);
	if (sc->soctherm_clk != NULL)
		FUNC9(sc->soctherm_clk);
	if (sc->reset != NULL)
		FUNC16(sc->reset);
	if (sc->irq_res != NULL)
		FUNC5(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC5(dev, SYS_RES_MEMORY, 0, sc->mem_res);

	return (ENXIO);
}