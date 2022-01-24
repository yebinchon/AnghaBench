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
typedef  int uint32_t ;
struct ti_mbox_softc {int /*<<< orphan*/  sc_intr; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MAILBOX0_CLK ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TI_MBOX_REVISION ; 
 int /*<<< orphan*/  TI_MBOX_SYSCONFIG ; 
 int TI_MBOX_SYSCONFIG_SMARTIDLE ; 
 int TI_MBOX_SYSCONFIG_SOFTRST ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ti_mbox_softc*,int /*<<< orphan*/ *) ; 
 struct ti_mbox_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_mbox_intr ; 
 int FUNC11 (struct ti_mbox_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ti_mbox_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct ti_mbox_softc *sc;
	int rid, delay, chan;
	uint32_t rev, sysconfig;

	if (FUNC13(MAILBOX0_CLK) != 0) {
		FUNC6(dev, "could not enable MBOX clock\n");
		return (ENXIO);
	}
	sc = FUNC5(dev);
	rid = 0;
	FUNC7(&sc->sc_mtx, "TI mbox", NULL, MTX_DEF);
	sc->sc_mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC6(dev, "could not allocate memory resource\n");
		return (ENXIO);
	}
	sc->sc_bt = FUNC9(sc->sc_mem_res);
	sc->sc_bh = FUNC8(sc->sc_mem_res);
	rid = 0;
	sc->sc_irq_res = FUNC3(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC6(dev, "could not allocate interrupt resource\n");
		FUNC10(dev);
		return (ENXIO);
	}
	if (FUNC4(dev, sc->sc_irq_res, INTR_MPSAFE | INTR_TYPE_MISC,
	    NULL, ti_mbox_intr, sc, &sc->sc_intr) != 0) {
		FUNC6(dev, "unable to setup the interrupt handler\n");
		FUNC10(dev);
		return (ENXIO);
	}
	/*
	 * Reset the controller.
	 */
	sysconfig = FUNC11(sc, TI_MBOX_SYSCONFIG);
	FUNC1("initial sysconfig %d\n", sysconfig);
	sysconfig |= TI_MBOX_SYSCONFIG_SOFTRST;
	delay = 100;
	while (FUNC11(sc, TI_MBOX_SYSCONFIG) & 
	    TI_MBOX_SYSCONFIG_SOFTRST) {
		delay--;
		FUNC0(10);
	}
	if (delay == 0) {
		FUNC6(dev, "controller reset failed\n");
		FUNC10(dev);
		return (ENXIO);
	}
	/*
	 * Enable smart idle mode.
	 */
	FUNC12(sc, TI_MBOX_SYSCONFIG,
	    FUNC11(sc, TI_MBOX_SYSCONFIG) | TI_MBOX_SYSCONFIG_SMARTIDLE);
	rev = FUNC11(sc, TI_MBOX_REVISION);
	FUNC1("rev %d\n", rev);
	FUNC6(dev, "revision %d.%d\n", (rev >> 8) & 0x4, rev & 0x40);
	/*
	 * Enable message interrupts.
	 */
	for (chan = 0; chan < 8; chan++)
		FUNC12(sc, FUNC2(chan), 1);

	return (0);
}