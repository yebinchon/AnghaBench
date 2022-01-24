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
struct bcm_bsc_softc {int /*<<< orphan*/ * sc_iicbus; int /*<<< orphan*/  sc_mtx; void* sc_mem_res; void* sc_irq_res; int /*<<< orphan*/  sc_intrhand; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  ich_func_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_bsc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_bsc_softc*) ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm_bsc_intr ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_bsc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_bsc_softc*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ bus_generic_attach ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bcm_bsc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 struct bcm_bsc_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct bcm_bsc_softc *sc;
	int rid;

	sc = FUNC10(dev);
	sc->sc_dev = dev;

	rid = 0;
	sc->sc_mem_res = FUNC5(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC11(dev, "cannot allocate memory window\n");
		return (ENXIO);
	}

	sc->sc_bst = FUNC14(sc->sc_mem_res);
	sc->sc_bsh = FUNC13(sc->sc_mem_res);

	rid = 0;
	sc->sc_irq_res = FUNC5(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (!sc->sc_irq_res) {
		FUNC6(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC11(dev, "cannot allocate interrupt\n");
		return (ENXIO);
	}

	/* Hook up our interrupt handler. */
	if (FUNC7(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, bcm_bsc_intr, sc, &sc->sc_intrhand)) {
		FUNC6(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
		FUNC6(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC11(dev, "cannot setup the interrupt handler\n");
		return (ENXIO);
	}

	FUNC12(&sc->sc_mtx, "bcm_bsc", NULL, MTX_DEF);

	FUNC4(sc);

	/* Enable the BSC controller.  Flush the FIFO. */
	FUNC0(sc);
	FUNC3(sc);
	FUNC1(sc);

	sc->sc_iicbus = FUNC9(dev, "iicbus", -1);
	if (sc->sc_iicbus == NULL) {
		FUNC2(dev);
		return (ENXIO);
	}

	/* Probe and attach the iicbus when interrupts are available. */
	FUNC8((ich_func_t)bus_generic_attach, dev);

	return (0);
}