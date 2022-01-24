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
struct ti_wdt_softc {int /*<<< orphan*/  sc_ev_tag; int /*<<< orphan*/  sc_intr; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ti_wdt_softc*,int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int TI_IRQ_EN_DLY ; 
 int TI_IRQ_EN_OVF ; 
 int TI_WDSC_SR ; 
 int /*<<< orphan*/  TI_WDT_WDSC ; 
 int /*<<< orphan*/  TI_WDT_WIDR ; 
 int /*<<< orphan*/  TI_WDT_WIRQENSET ; 
 scalar_t__ bootverbose ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ti_wdt_softc*,int /*<<< orphan*/ *) ; 
 struct ti_wdt_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ti_wdt_softc*) ; 
 int /*<<< orphan*/  ti_wdt_event ; 
 int /*<<< orphan*/  ti_wdt_intr ; 
 int FUNC10 (struct ti_wdt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ti_wdt_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  watchdog_list ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct ti_wdt_softc *sc;
	int rid;

	sc = FUNC4(dev);
	rid = 0;
	sc->sc_mem_res = FUNC2(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC5(dev, "could not allocate memory resource\n");
		return (ENXIO);
	}
	sc->sc_bt = FUNC7(sc->sc_mem_res);
	sc->sc_bh = FUNC6(sc->sc_mem_res);
	sc->sc_irq_res = FUNC2(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC5(dev, "could not allocate interrupt resource\n");
		FUNC8(dev);
		return (ENXIO);
	}
	if (FUNC3(dev, sc->sc_irq_res, INTR_MPSAFE | INTR_TYPE_MISC,
		NULL, ti_wdt_intr, sc,  &sc->sc_intr) != 0) {
		FUNC5(dev,
		    "unable to setup the interrupt handler\n");
		FUNC8(dev);
		return (ENXIO);
	}
	/* Reset, enable interrupts and stop the watchdog. */
	FUNC11(sc, TI_WDT_WDSC,
	    FUNC10(sc, TI_WDT_WDSC) | TI_WDSC_SR);
	while (FUNC10(sc, TI_WDT_WDSC) & TI_WDSC_SR)
		FUNC0(10);
	FUNC11(sc, TI_WDT_WIRQENSET, TI_IRQ_EN_OVF | TI_IRQ_EN_DLY);
	FUNC9(sc);
	if (bootverbose)
		FUNC5(dev, "revision: 0x%x\n",
		    FUNC10(sc, TI_WDT_WIDR));
	sc->sc_ev_tag = FUNC1(watchdog_list, ti_wdt_event, sc,
	    0);

	return (0);
}