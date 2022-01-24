#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dma_bits; int /*<<< orphan*/ * bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; void* parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  sc_intr_hdl; TYPE_2__ sc_bus; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_size; void* sc_io_tag; int /*<<< orphan*/  sc_devices; } ;
struct exynos_ehci_softc {int /*<<< orphan*/ * res; void* sysreg_bsh; void* sysreg_bst; void* host_bsh; void* host_bst; TYPE_1__ base; void* dev; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  void* device_t ;
typedef  void* bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int /*<<< orphan*/  EHCI_SCFLG_DONEINIT ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (void*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *) ; 
 struct exynos_ehci_softc* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  exynos_ehci_spec ; 
 int /*<<< orphan*/  FUNC12 (struct exynos_ehci_softc*) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct exynos_ehci_softc *esc;
	ehci_softc_t *sc;
	bus_space_handle_t bsh;
	int err;

	esc = FUNC7(dev);
	esc->dev = dev;
	sc = &esc->base;
	sc->sc_bus.parent = dev;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	if (FUNC1(dev, exynos_ehci_spec, esc->res)) {
		FUNC8(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* EHCI registers */
	sc->sc_io_tag = FUNC14(esc->res[0]);
	bsh = FUNC13(esc->res[0]);
	sc->sc_io_size = FUNC15(esc->res[0]);

	/* EHCI HOST ctrl registers */
	esc->host_bst = FUNC14(esc->res[1]);
	esc->host_bsh = FUNC13(esc->res[1]);

	/* SYSREG */
	esc->sysreg_bst = FUNC14(esc->res[2]);
	esc->sysreg_bsh = FUNC13(esc->res[2]);

	/* get all DMA memory */
	if (FUNC17(&sc->sc_bus, FUNC0(dev),
		&ehci_iterate_hw_softc))
		return (ENXIO);

	/*
	 * Set handle to USB related registers subregion used by
	 * generic EHCI driver.
	 */
	err = FUNC3(sc->sc_io_tag, bsh, 0x0,
	    sc->sc_io_size, &sc->sc_io_hdl);
	if (err != 0)
		return (ENXIO);

	FUNC12(esc);

	/* Setup interrupt handler */
	err = FUNC2(dev, esc->res[3], INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ehci_interrupt, sc,
	    &sc->sc_intr_hdl);
	if (err) {
		FUNC8(dev, "Could not setup irq, "
		    "%d\n", err);
		return (1);
	}

	/* Add USB device */
	sc->sc_bus.bdev = FUNC5(dev, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC8(dev, "Could not add USB device\n");
		err = FUNC4(dev, esc->res[3],
		    sc->sc_intr_hdl);
		if (err)
			FUNC8(dev, "Could not tear down irq,"
			    " %d\n", err);
		return (1);
	}
	FUNC10(sc->sc_bus.bdev, &sc->sc_bus);

	FUNC16(sc->sc_vendor, "Samsung", sizeof(sc->sc_vendor));

	err = FUNC11(sc);
	if (!err) {
		sc->sc_flags |= EHCI_SCFLG_DONEINIT;
		err = FUNC9(sc->sc_bus.bdev);
	} else {
		FUNC8(dev, "USB init failed err=%d\n", err);

		FUNC6(dev, sc->sc_bus.bdev);
		sc->sc_bus.bdev = NULL;

		err = FUNC4(dev, esc->res[3],
		    sc->sc_intr_hdl);
		if (err)
			FUNC8(dev, "Could not tear down irq,"
			    " %d\n", err);
		return (1);
	}
	return (0);
}