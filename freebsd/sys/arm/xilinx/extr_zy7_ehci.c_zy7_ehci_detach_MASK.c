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
struct TYPE_4__ {int sc_flags; int /*<<< orphan*/  sc_bus; scalar_t__ sc_io_res; scalar_t__ sc_irq_res; int /*<<< orphan*/ * sc_intr_hdl; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EHCI_SCFLG_DONEINIT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	ehci_softc_t *sc = FUNC3(dev);

	/* during module unload there are lots of children leftover */
	FUNC2(dev);
	
	if ((sc->sc_flags & EHCI_SCFLG_DONEINIT) != 0) {
		FUNC4(sc);
		sc->sc_flags &= ~EHCI_SCFLG_DONEINIT;
	}

	if (sc->sc_irq_res) {
		if (sc->sc_intr_hdl != NULL)
			FUNC1(dev, sc->sc_irq_res,
					  sc->sc_intr_hdl);
		FUNC0(dev, SYS_RES_IRQ,
			     FUNC5(sc->sc_irq_res), sc->sc_irq_res);
	}

	if (sc->sc_io_res)
		FUNC0(dev, SYS_RES_MEMORY,
			     FUNC5(sc->sc_io_res), sc->sc_io_res);
	FUNC6(&sc->sc_bus, &ehci_iterate_hw_softc);

	return (0);
}