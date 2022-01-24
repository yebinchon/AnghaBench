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
struct tegra_rtc_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * irq_h; int /*<<< orphan*/ * clk; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_rtc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_rtc_softc*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RTC_INTR_MASK ; 
 int /*<<< orphan*/  RTC_INTR_STATUS ; 
 int /*<<< orphan*/  RTC_SECONDS_ALARM0 ; 
 int /*<<< orphan*/  RTC_SECONDS_ALARM1 ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_rtc_softc*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tegra_rtc_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct tegra_rtc_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  tegra_rtc_intr ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	int rv, rid;
	struct tegra_rtc_softc *sc;

	sc = FUNC11(dev);
	sc->dev = dev;

	FUNC1(sc);

	/* Get the memory resource for the register mapping. */
	rid = 0;
	sc->mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC12(dev, "Cannot map registers.\n");
		rv = ENXIO;
		goto fail;
	}

	/* Allocate our IRQ resource. */
	rid = 0;
	sc->irq_res = FUNC3(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC12(dev, "Cannot allocate interrupt.\n");
		rv = ENXIO;
		goto fail;
	}

	/* OFW resources. */
	rv = FUNC9(dev, 0, 0, &sc->clk);
	if (rv != 0) {
		FUNC12(dev, "Cannot get i2c clock: %d\n", rv);
		goto fail;
	}
	rv = FUNC8(sc->clk);
	if (rv != 0) {
		FUNC12(dev, "Cannot enable clock: %d\n", rv);
		goto fail;
	}

	/* Init hardware. */
	FUNC2(sc, RTC_SECONDS_ALARM0, 0);
	FUNC2(sc, RTC_SECONDS_ALARM1, 0);
	FUNC2(sc, RTC_INTR_STATUS, 0xFFFFFFFF);
	FUNC2(sc, RTC_INTR_MASK, 0);

	/* Setup  interrupt */
	rv = FUNC6(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, tegra_rtc_intr, sc, &sc->irq_h);
	if (rv) {
		FUNC12(dev, "Cannot setup interrupt.\n");
		goto fail;
	}

	/*
	 * Register as a time of day clock with 1-second resolution.
	 *
	 * XXXX Not yet, we don't have support for multiple RTCs
	 */
	/* clock_register(dev, 1000000); */

	return (FUNC4(dev));

fail:
	if (sc->clk != NULL)
		FUNC10(sc->clk);
	if (sc->irq_h != NULL)
		FUNC7(dev, sc->irq_res, sc->irq_h);
	if (sc->irq_res != NULL)
		FUNC5(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC5(dev, SYS_RES_MEMORY, 0, sc->mem_res);
	FUNC0(sc);

	return (rv);
}