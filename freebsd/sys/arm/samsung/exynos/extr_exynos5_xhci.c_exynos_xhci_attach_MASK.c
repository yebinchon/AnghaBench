#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * bdev; } ;
struct TYPE_6__ {TYPE_4__ sc_bus; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_size; void* sc_io_tag; } ;
struct exynos_xhci_softc {TYPE_1__ base; int /*<<< orphan*/ * res; void* bsh; void* bst; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  void* bus_space_handle_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC3 (void*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct exynos_xhci_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (struct exynos_xhci_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exynos_xhci_spec ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ xhci_interrupt ; 
 int FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct exynos_xhci_softc *esc = FUNC5(dev);
	bus_space_handle_t bsh;
	int err;

	esc->dev = dev;

	if (FUNC0(dev, exynos_xhci_spec, esc->res)) {
		FUNC6(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* XHCI registers */
	esc->base.sc_io_tag = FUNC12(esc->res[0]);
	bsh = FUNC11(esc->res[0]);
	esc->base.sc_io_size = FUNC13(esc->res[0]);

	/* DWC3 ctrl registers */
	esc->bst = FUNC12(esc->res[1]);
	esc->bsh = FUNC11(esc->res[1]);

	/*
	 * Set handle to USB related registers subregion used by
	 * generic XHCI driver.
	 */
	err = FUNC3(esc->base.sc_io_tag, bsh, 0x0,
	    esc->base.sc_io_size, &esc->base.sc_io_hdl);
	if (err != 0) {
		FUNC6(dev, "Subregion failed\n");
		FUNC1(dev, exynos_xhci_spec, esc->res);
		return (ENXIO);
	}

	if (FUNC16(&esc->base, dev, 0)) {
		FUNC6(dev, "Could not initialize softc\n");
		FUNC1(dev, exynos_xhci_spec, esc->res);
		return (ENXIO);
	}

	/* Setup interrupt handler */
	err = FUNC2(dev, esc->res[2], INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)xhci_interrupt, &esc->base,
	    &esc->base.sc_intr_hdl);
	if (err) {
		FUNC6(dev, "Could not setup irq, %d\n", err);
		esc->base.sc_intr_hdl = NULL;
		goto error;
	}

	/* Add USB device */
	esc->base.sc_bus.bdev = FUNC4(dev, "usbus", -1);
	if (esc->base.sc_bus.bdev == NULL) {
		FUNC6(dev, "Could not add USB device\n");
		goto error;
	}
	FUNC8(esc->base.sc_bus.bdev, &esc->base.sc_bus);
	FUNC14(esc->base.sc_vendor, "Samsung", sizeof(esc->base.sc_vendor));

	FUNC9(esc);

	err = FUNC15(&esc->base);
	if (err == 0) {
		FUNC6(dev, "Starting controller\n");
		err = FUNC17(&esc->base);
	}
	if (err == 0) {
		FUNC6(dev, "Controller started\n");
		err = FUNC7(esc->base.sc_bus.bdev);
	}
	if (err != 0)
		goto error;
	return (0);

error:
	FUNC10(dev);
	return (ENXIO);
}