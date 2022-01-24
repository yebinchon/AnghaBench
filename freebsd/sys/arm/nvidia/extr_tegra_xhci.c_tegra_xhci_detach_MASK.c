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
struct xhci_softc {int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/  sc_callout; } ;
struct tegra_xhci_softc {scalar_t__ fw_vaddr; int /*<<< orphan*/  fw_size; int /*<<< orphan*/ * irq_hdl_mbox; int /*<<< orphan*/ * irq_res_mbox; scalar_t__ xhci_inited; struct xhci_softc xhci_softc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_xhci_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct tegra_xhci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_softc*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct tegra_xhci_softc *sc;
	struct xhci_softc *xsc;

	sc = FUNC4(dev);
	xsc = &sc->xhci_softc;

	/* during module unload there are lots of children leftover */
	FUNC3(dev);
	if (sc->xhci_inited) {
		FUNC7(&xsc->sc_callout);
		FUNC8(xsc);
	}

	if (xsc->sc_irq_res && xsc->sc_intr_hdl) {
		FUNC2(dev, xsc->sc_irq_res, xsc->sc_intr_hdl);
		xsc->sc_intr_hdl = NULL;
	}
	if (xsc->sc_irq_res) {
		FUNC1(dev, SYS_RES_IRQ,
		    FUNC6(xsc->sc_irq_res), xsc->sc_irq_res);
		xsc->sc_irq_res = NULL;
	}
	if (xsc->sc_io_res != NULL) {
		FUNC1(dev, SYS_RES_MEMORY,
		    FUNC6(xsc->sc_io_res), xsc->sc_io_res);
		xsc->sc_io_res = NULL;
	}
	if (sc->xhci_inited)
		FUNC9(xsc);
	if (sc->irq_hdl_mbox != NULL)
		FUNC2(dev, sc->irq_res_mbox, sc->irq_hdl_mbox);
	if (sc->fw_vaddr != 0)
		FUNC5(sc->fw_vaddr, sc->fw_size);
	FUNC0(sc);
	return (0);
}