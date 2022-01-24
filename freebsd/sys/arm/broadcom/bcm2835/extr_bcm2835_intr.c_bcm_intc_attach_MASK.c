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
struct bcm_intc_softc {int /*<<< orphan*/ * intc_res; int /*<<< orphan*/  intc_bsh; int /*<<< orphan*/  intc_bst; int /*<<< orphan*/  intc_irq_hdl; int /*<<< orphan*/ * intc_irq_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 intptr_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  bcm2835_intc_intr ; 
 scalar_t__ FUNC1 (struct bcm_intc_softc*,intptr_t) ; 
 struct bcm_intc_softc* bcm_intc_sc ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bcm_intc_softc*,int /*<<< orphan*/ *) ; 
 struct bcm_intc_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,intptr_t,int /*<<< orphan*/ ,struct bcm_intc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct		bcm_intc_softc *sc = FUNC5(dev);
	int		rid = 0;
	intptr_t	xref;
	sc->sc_dev = dev;

	if (bcm_intc_sc)
		return (ENXIO);

	sc->intc_res = FUNC2(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->intc_res == NULL) {
		FUNC6(dev, "could not allocate memory resource\n");
		return (ENXIO);
	}

	xref = FUNC0(FUNC8(dev));
	if (FUNC1(sc, xref) != 0) {
		FUNC3(dev, SYS_RES_MEMORY, 0, sc->intc_res);
		FUNC6(dev, "could not register PIC\n");
		return (ENXIO);
	}

	rid = 0;
	sc->intc_irq_res = FUNC2(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->intc_irq_res == NULL) {
		if (FUNC7(dev, xref, bcm2835_intc_intr, sc, 0) != 0) {
			/* XXX clean up */
			FUNC6(dev, "could not set PIC as a root\n");
			return (ENXIO);
		}
	} else {
		if (FUNC4(dev, sc->intc_irq_res, INTR_TYPE_CLK,
		    bcm2835_intc_intr, NULL, sc, &sc->intc_irq_hdl)) {
			/* XXX clean up */
			FUNC6(dev, "could not setup irq handler\n");
			return (ENXIO);
		}
	}
	sc->intc_bst = FUNC10(sc->intc_res);
	sc->intc_bsh = FUNC9(sc->intc_res);

	bcm_intc_sc = sc;

	return (0);
}