#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_intr_hdl; } ;
struct omap_ehci_softc {TYPE_1__ base; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_USBINTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct omap_ehci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct omap_ehci_softc *isc = FUNC4(dev);
	ehci_softc_t *sc = &isc->base;
	int err;
	
	/* during module unload there are lots of children leftover */
	FUNC3(dev);
	
	/*
	 * disable interrupts that might have been switched on in ehci_init
	 */
	if (sc->sc_io_res) {
		FUNC0(sc, EHCI_USBINTR, 0);
	}
	
	if (sc->sc_irq_res && sc->sc_intr_hdl) {
		/*
		 * only call ehci_detach() after ehci_init()
		 */
		FUNC6(sc);
		
		err = FUNC2(dev, sc->sc_irq_res, sc->sc_intr_hdl);
		if (err)
			FUNC5(dev, "Error: could not tear down irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
	}
	
	/* Free the resources stored in the base EHCI handler */
	if (sc->sc_irq_res) {
		FUNC1(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
		sc->sc_irq_res = NULL;
	}
	if (sc->sc_io_res) {
		FUNC1(dev, SYS_RES_MEMORY, 0, sc->sc_io_res);
		sc->sc_io_res = NULL;
	}

	return (0);
}