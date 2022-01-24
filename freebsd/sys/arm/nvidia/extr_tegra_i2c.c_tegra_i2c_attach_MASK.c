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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct tegra_i2c_softc {int bus_freq; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * irq_h; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/  clk; scalar_t__ core_freq; int /*<<< orphan*/  dev; int /*<<< orphan*/  reset; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_i2c_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tegra_i2c_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 struct tegra_i2c_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  tegra_i2c_intr ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	int rv, rid;
	phandle_t node;
	struct tegra_i2c_softc *sc;
	uint64_t freq;

	sc = FUNC13(dev);
	sc->dev = dev;
	node = FUNC16(dev);

	FUNC1(sc);

	/* Get the memory resource for the register mapping. */
	rid = 0;
	sc->mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC14(dev, "Cannot map registers.\n");
		rv = ENXIO;
		goto fail;
	}

	/* Allocate our IRQ resource. */
	rid = 0;
	sc->irq_res = FUNC3(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC14(dev, "Cannot allocate interrupt.\n");
		rv = ENXIO;
		goto fail;
	}

	/* FDT resources. */
	rv = FUNC9(dev, 0, "div-clk", &sc->clk);
	if (rv != 0) {
		FUNC14(dev, "Cannot get i2c clock: %d\n", rv);
		goto fail;
	}
	rv = FUNC15(sc->dev, 0, "i2c", &sc->reset);
	if (rv != 0) {
		FUNC14(sc->dev, "Cannot get i2c reset\n");
		return (ENXIO);
	}
	rv = FUNC2(node, "clock-frequency", &sc->bus_freq,
	    sizeof(sc->bus_freq));
	if (rv != sizeof(sc->bus_freq)) {
		sc->bus_freq = 100000;
		goto fail;
	}

	/* Request maximum frequency for I2C block 136MHz (408MHz / 3). */
	rv = FUNC11(sc->clk, 136000000, CLK_SET_ROUND_DOWN);
	if (rv != 0) {
		FUNC14(dev, "Cannot set clock frequency\n");
		goto fail;
	}
	rv = FUNC10(sc->clk, &freq);
	if (rv != 0) {
		FUNC14(dev, "Cannot get clock frequency\n");
		goto fail;
	}
	sc->core_freq = (uint32_t)freq;

	rv = FUNC8(sc->clk);
	if (rv != 0) {
		FUNC14(dev, "Cannot enable clock: %d\n", rv);
		goto fail;
	}

	/* Init hardware. */
	rv = FUNC17(sc);
	if (rv) {
		FUNC14(dev, "tegra_i2c_activate failed\n");
		goto fail;
	}

	/* Setup interrupt. */
	rv = FUNC6(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, tegra_i2c_intr, sc, &sc->irq_h);
	if (rv) {
		FUNC14(dev, "Cannot setup interrupt.\n");
		goto fail;
	}

	/* Attach the iicbus. */
	sc->iicbus = FUNC12(dev, "iicbus", -1);
	if (sc->iicbus == NULL) {
		FUNC14(dev, "Could not allocate iicbus instance.\n");
		rv = ENXIO;
		goto fail;
	}

	/* Probe and attach the iicbus. */
	return (FUNC4(dev));

fail:
	if (sc->irq_h != NULL)
		FUNC7(dev, sc->irq_res, sc->irq_h);
	if (sc->irq_res != NULL)
		FUNC5(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC5(dev, SYS_RES_MEMORY, 0, sc->mem_res);
	FUNC0(sc);

	return (rv);
}