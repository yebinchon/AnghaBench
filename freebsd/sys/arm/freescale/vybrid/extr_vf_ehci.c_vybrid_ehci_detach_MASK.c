#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sc_flags; int /*<<< orphan*/  sc_bus; int /*<<< orphan*/ * sc_intr_hdl; scalar_t__ sc_io_hdl; scalar_t__ sc_io_tag; } ;
struct vybrid_ehci_softc {scalar_t__* res; TYPE_1__ base; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EHCI_SCFLG_DONEINIT ; 
 int /*<<< orphan*/  EHCI_USBINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct vybrid_ehci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vybrid_ehci_spec ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct vybrid_ehci_softc *esc;
	ehci_softc_t *sc;
	int err;

	esc = FUNC4(dev);
	sc = &esc->base;

	/* First detach all children; we can't detach if that fails. */
	if ((err = FUNC3(dev)) != 0)
		return (err);

	/*
	 * only call ehci_detach() after ehci_init()
	 */
	if (sc->sc_flags & EHCI_SCFLG_DONEINIT) {
		FUNC6(sc);
		sc->sc_flags &= ~EHCI_SCFLG_DONEINIT;
	}

	/*
	 * Disable interrupts that might have been switched on in
	 * ehci_init.
	 */
	if (sc->sc_io_tag && sc->sc_io_hdl)
		FUNC1(sc->sc_io_tag, sc->sc_io_hdl,
		    EHCI_USBINTR, 0);

	if (esc->res[5] && sc->sc_intr_hdl) {
		err = FUNC2(dev, esc->res[5],
		    sc->sc_intr_hdl);
		if (err) {
			FUNC5(dev, "Could not tear down irq,"
			    " %d\n", err);
			return (err);
		}
		sc->sc_intr_hdl = NULL;
	}

	FUNC7(&sc->sc_bus, &ehci_iterate_hw_softc);

	FUNC0(dev, vybrid_ehci_spec, esc->res);

	return (0);
}