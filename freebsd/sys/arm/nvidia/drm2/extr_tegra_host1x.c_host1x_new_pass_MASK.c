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
struct TYPE_2__ {struct host1x_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct host1x_softc {int attach_done; TYPE_1__ irq_hook; int /*<<< orphan*/  syncpt_irq_h; int /*<<< orphan*/ * syncpt_irq_res; int /*<<< orphan*/  gen_irq_h; int /*<<< orphan*/ * gen_irq_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  reset; int /*<<< orphan*/  clk; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ BUS_PASS_DEFAULT ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ bus_current_pass ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct host1x_softc*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct host1x_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  host1x_gen_intr ; 
 int /*<<< orphan*/  host1x_irq_hook ; 
 int /*<<< orphan*/  host1x_syncpt_intr ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(device_t dev)
{
	struct host1x_softc *sc;
	int rv, rid;
	phandle_t node;

	/*
	 * We attach during BUS_PASS_BUS (because we must overcome simplebus),
	 * but some of our FDT resources are not ready until BUS_PASS_DEFAULT
	 */
	sc = FUNC9(dev);
	if (sc->attach_done || bus_current_pass < BUS_PASS_DEFAULT) {
		FUNC3(dev);
		return;
	}

	sc->attach_done = 1;
	node = FUNC13(dev);

	/* Allocate our IRQ resource. */
	rid = 0;
	sc->syncpt_irq_res = FUNC2(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->syncpt_irq_res == NULL) {
		FUNC10(dev, "Cannot allocate interrupt.\n");
		rv = ENXIO;
		goto fail;
	}
	rid = 1;
	sc->gen_irq_res = FUNC2(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->gen_irq_res == NULL) {
		FUNC10(dev, "Cannot allocate interrupt.\n");
		rv = ENXIO;
		goto fail;
	}

	/* FDT resources */
	rv = FUNC12(sc->dev, 0, "host1x", &sc->reset);
	if (rv != 0) {
		FUNC10(dev, "Cannot get fuse reset\n");
		goto fail;
	}
	rv = FUNC6(sc->dev, 0, 0, &sc->clk);
	if (rv != 0) {
		FUNC10(dev, "Cannot get i2c clock: %d\n", rv);
		goto fail;
	}

	rv = FUNC5(sc->clk);
	if (rv != 0) {
		FUNC10(dev, "Cannot enable clock: %d\n", rv);
		goto fail;
	}
	rv = FUNC11(sc->reset);
	if (rv != 0) {
		FUNC10(sc->dev, "Cannot clear reset\n");
		goto fail;
	}

	/* Setup  interrupts */
	rv = FUNC4(dev, sc->gen_irq_res,
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, host1x_gen_intr,
	    sc, &sc->gen_irq_h);
	if (rv) {
		FUNC10(dev, "Cannot setup gen interrupt.\n");
		goto fail;
	}

	rv = FUNC4(dev, sc->syncpt_irq_res,
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, host1x_syncpt_intr,
	    sc, &sc->syncpt_irq_h);
	if (rv) {
		FUNC10(dev, "Cannot setup syncpt interrupt.\n");
		goto fail;
	}

	FUNC15(dev, 0);
	for (node = FUNC0(node); node > 0; node = FUNC1(node))
	    FUNC14(dev, node, 0, NULL, -1, NULL);

	sc->irq_hook.ich_func = host1x_irq_hook;
	sc->irq_hook.ich_arg = sc;
	FUNC7(&sc->irq_hook);
	FUNC3(dev);
	return;

fail:
	FUNC8(dev);
	return;
}