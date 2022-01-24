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
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {int dma_bits; int /*<<< orphan*/ * bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; void* parent; } ;
struct TYPE_6__ {TYPE_2__ sc_bus; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/  sc_id_vendor; int /*<<< orphan*/  sc_intr_hdl; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; int /*<<< orphan*/  sc_vendor_post_reset; int /*<<< orphan*/  sc_vendor_get_port_speed; } ;
struct tegra_ehci_softc {void* dev; int usb_alloc_called; int /*<<< orphan*/ * ehci_irq_res; int /*<<< orphan*/ * ehci_mem_res; int /*<<< orphan*/  phy; int /*<<< orphan*/  reset; int /*<<< orphan*/  clk; TYPE_1__ ehci_softc; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  void* device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int /*<<< orphan*/  EHCI_SCFLG_DONEINIT ; 
 int /*<<< orphan*/  EHCI_SCFLG_NORESTERM ; 
 int /*<<< orphan*/  EHCI_SCFLG_TT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TEGRA_EHCI_REG_OFF ; 
 int /*<<< orphan*/  TEGRA_EHCI_REG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  USB_VENDOR_FREESCALE ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC7 (void*,char*,int) ; 
 struct tegra_ehci_softc* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ehci_get_port_speed_hostc ; 
 int FUNC12 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (void*) ; 
 int /*<<< orphan*/  tegra_ehci_post_reset ; 
 int FUNC22 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	struct tegra_ehci_softc *sc;
	ehci_softc_t *esc;
	int rv, rid;
	uint64_t freq;
	phandle_t node;

	sc = FUNC8(dev);
	sc->dev = dev;
	node = FUNC15(dev);
	esc = &sc->ehci_softc;

	/* Allocate resources. */
	rid = 0;
	sc->ehci_mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->ehci_mem_res == NULL) {
		FUNC9(dev, "Cannot allocate memory resources\n");
		rv = ENXIO;
		goto out;
	}

	rid = 0;
	sc->ehci_irq_res = FUNC1(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->ehci_irq_res == NULL) {
		FUNC9(dev, "Cannot allocate IRQ resources\n");
		rv = ENXIO;
		goto out;
	}

	rv = FUNC14(dev, 0, "usb", &sc->reset);
	if (rv != 0) {
		FUNC9(dev, "Cannot get reset\n");
		rv = ENXIO;
		goto out;
	}

	rv = FUNC17(sc->dev, 0, "nvidia,phy", &sc->phy);
	if (rv != 0) {
		FUNC9(sc->dev, "Cannot get 'nvidia,phy' phy\n");
		rv = ENXIO;
		goto out;
	}

	rv = FUNC5(sc->dev, 0, 0, &sc->clk);
	if (rv != 0) {
		FUNC9(dev, "Cannot get clock\n");
		goto out;
	}

	rv = FUNC4(sc->clk);
	if (rv != 0) {
		FUNC9(dev, "Cannot enable clock\n");
		goto out;
	}

	freq = 0;
	rv = FUNC6(sc->clk, &freq);
	if (rv != 0) {
		FUNC9(dev, "Cannot get clock frequency\n");
		goto out;
	}

	rv = FUNC13(sc->reset);
	if (rv != 0) {
		FUNC9(dev, "Cannot clear reset: %d\n", rv);
		rv = ENXIO;
		goto out;
	}

	rv = FUNC16(sc->phy);
	if (rv != 0) {
		FUNC9(dev, "Cannot enable phy: %d\n", rv);
		goto out;
	}

	/* Fill data for EHCI driver. */
	esc->sc_vendor_get_port_speed = ehci_get_port_speed_hostc;
	esc->sc_vendor_post_reset = tegra_ehci_post_reset;
	esc->sc_io_tag = FUNC19(sc->ehci_mem_res);
	esc->sc_bus.parent = dev;
	esc->sc_bus.devices = esc->sc_devices;
	esc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	esc->sc_bus.dma_bits = 32;

	/* Allocate all DMA memory. */
	rv = FUNC22(&esc->sc_bus, FUNC0(dev),
	    &ehci_iterate_hw_softc);
	sc->usb_alloc_called = 1;
	if (rv != 0) {
		FUNC9(dev, "usb_bus_mem_alloc_all() failed\n");
		rv = ENOMEM;
		goto out;
	}

	/*
	 * Set handle to USB related registers subregion used by
	 * generic EHCI driver.
	 */
	rv = FUNC3(esc->sc_io_tag,
	    FUNC18(sc->ehci_mem_res),
	    TEGRA_EHCI_REG_OFF, TEGRA_EHCI_REG_SIZE, &esc->sc_io_hdl);
	if (rv != 0) {
		FUNC9(dev, "Could not create USB memory subregion\n");
		rv = ENXIO;
		goto out;
	}

	/* Setup interrupt handler. */
	rv = FUNC2(dev, sc->ehci_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ehci_interrupt, esc, &esc->sc_intr_hdl);
	if (rv != 0) {
		FUNC9(dev, "Could not setup IRQ\n");
		goto out;
	}

	/* Add USB bus device. */
	esc->sc_bus.bdev = FUNC7(dev, "usbus", -1);
	if (esc->sc_bus.bdev == NULL) {
		FUNC9(dev, "Could not add USB device\n");
		goto out;
	}
	FUNC11(esc->sc_bus.bdev, &esc->sc_bus);

	esc->sc_id_vendor = USB_VENDOR_FREESCALE;
	FUNC20(esc->sc_vendor, "Nvidia", sizeof(esc->sc_vendor));

	/* Set flags that affect ehci_init() behavior. */
	esc->sc_flags |= EHCI_SCFLG_TT;
	esc->sc_flags |= EHCI_SCFLG_NORESTERM;
	rv = FUNC12(esc);
	if (rv != 0) {
		FUNC9(dev, "USB init failed: %d\n",
		    rv);
		goto out;
	}
	esc->sc_flags |= EHCI_SCFLG_DONEINIT;

	/* Probe the bus. */
	rv = FUNC10(esc->sc_bus.bdev);
	if (rv != 0) {
		FUNC9(dev,
		    "device_probe_and_attach() failed\n");
		goto out;
	}
	return (0);

out:
	FUNC21(dev);
	return (rv);
}