#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * bdev; } ;
struct TYPE_4__ {int sc_flags; TYPE_2__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/  sc_irq_res; } ;
struct tegra_ehci_softc {scalar_t__ usb_alloc_called; int /*<<< orphan*/ * ehci_mem_res; int /*<<< orphan*/ * ehci_irq_res; int /*<<< orphan*/ * clk; TYPE_1__ ehci_softc; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EHCI_SCFLG_DONEINIT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct tegra_ehci_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct tegra_ehci_softc *sc;
	ehci_softc_t *esc;

	sc = FUNC5(dev);

	esc = &sc->ehci_softc;
	if (sc->clk != NULL)
		FUNC2(sc->clk);
	if (esc->sc_bus.bdev != NULL)
		FUNC3(dev, esc->sc_bus.bdev);
	if (esc->sc_flags & EHCI_SCFLG_DONEINIT)
		FUNC6(esc);
	if (esc->sc_intr_hdl != NULL)
		FUNC1(dev, esc->sc_irq_res,
		    esc->sc_intr_hdl);
	if (sc->ehci_irq_res != NULL)
		FUNC0(dev, SYS_RES_IRQ, 0,
		    sc->ehci_irq_res);
	if (sc->ehci_mem_res != NULL)
		FUNC0(dev, SYS_RES_MEMORY, 0,
		    sc->ehci_mem_res);
	if (sc->usb_alloc_called)
		FUNC7(&esc->sc_bus, &ehci_iterate_hw_softc);

	/* During module unload there are lots of children leftover. */
	FUNC4(dev);

	return (0);
}