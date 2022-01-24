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
struct TYPE_6__ {int sc_flags; int /*<<< orphan*/  sc_intr_hdl; TYPE_2__ sc_bus; int /*<<< orphan*/  sc_vendor_get_port_speed; int /*<<< orphan*/  sc_vendor_post_reset; void* sc_io_hdl; void* sc_io_tag; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_devices; } ;
struct vybrid_ehci_softc {int /*<<< orphan*/ * res; void* bsh_phy; void* bst_phy; void* bsh_usbc; void* bst_usbc; TYPE_1__ base; void* dev; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  void* device_t ;
typedef  void* bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int EHCI_SCFLG_DONEINIT ; 
 int EHCI_SCFLG_NORESTERM ; 
 int EHCI_SCFLG_TT ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int USB_HCSPARAMS ; 
 int USB_HWDEVICE ; 
 int USB_HWGENERAL ; 
 int USB_HWHOST ; 
 int USB_HWRXBUF ; 
 int USB_HWTXBUF ; 
 int USB_ID ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (void*,void*,int) ; 
 int FUNC4 (void*,void*,int,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int,int) ; 
 int FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ *) ; 
 struct vybrid_ehci_softc* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ehci_get_port_speed_portsc ; 
 int FUNC13 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 scalar_t__ FUNC14 (struct vybrid_ehci_softc*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vybrid_ehci_post_reset ; 
 int /*<<< orphan*/  vybrid_ehci_spec ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct vybrid_ehci_softc *esc;
	ehci_softc_t *sc;
	bus_space_handle_t bsh;
	int err;
	int reg;

	esc = FUNC9(dev);
	esc->dev = dev;

	sc = &esc->base;
	sc->sc_bus.parent = dev;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	if (FUNC1(dev, vybrid_ehci_spec, esc->res)) {
		FUNC10(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* EHCI registers */
	sc->sc_io_tag = FUNC17(esc->res[0]);
	bsh = FUNC16(esc->res[0]);
	sc->sc_io_size = FUNC18(esc->res[0]);

	esc->bst_usbc = FUNC17(esc->res[1]);
	esc->bsh_usbc = FUNC16(esc->res[1]);

	esc->bst_phy = FUNC17(esc->res[2]);
	esc->bsh_phy = FUNC16(esc->res[2]);

	/* get all DMA memory */
	if (FUNC20(&sc->sc_bus, FUNC0(dev),
		&ehci_iterate_hw_softc))
		return (ENXIO);

#if 0
	printf("USBx_HCSPARAMS is 0x%08x\n",
	    bus_space_read_4(sc->sc_io_tag, bsh, USB_HCSPARAMS));
	printf("USB_ID == 0x%08x\n",
	    bus_space_read_4(sc->sc_io_tag, bsh, USB_ID));
	printf("USB_HWGENERAL == 0x%08x\n",
	    bus_space_read_4(sc->sc_io_tag, bsh, USB_HWGENERAL));
	printf("USB_HWHOST == 0x%08x\n",
	    bus_space_read_4(sc->sc_io_tag, bsh, USB_HWHOST));
	printf("USB_HWDEVICE == 0x%08x\n",
	    bus_space_read_4(sc->sc_io_tag, bsh, USB_HWDEVICE));
	printf("USB_HWTXBUF == 0x%08x\n",
	    bus_space_read_4(sc->sc_io_tag, bsh, USB_HWTXBUF));
	printf("USB_HWRXBUF == 0x%08x\n",
	    bus_space_read_4(sc->sc_io_tag, bsh, USB_HWRXBUF));
#endif

	if (FUNC14(esc)) {
		FUNC10(dev, "Could not setup PHY\n");
		return (1);
	}

	/*
	 * Set handle to USB related registers subregion used by
	 * generic EHCI driver.
	 */
	err = FUNC4(sc->sc_io_tag, bsh, 0x100,
	    sc->sc_io_size, &sc->sc_io_hdl);
	if (err != 0)
		return (ENXIO);

	/* Setup interrupt handler */
	err = FUNC2(dev, esc->res[3], INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ehci_interrupt, sc,
	    &sc->sc_intr_hdl);
	if (err) {
		FUNC10(dev, "Could not setup irq, "
		    "%d\n", err);
		return (1);
	}

	/* Add USB device */
	sc->sc_bus.bdev = FUNC7(dev, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC10(dev, "Could not add USB device\n");
		err = FUNC6(dev, esc->res[5],
		    sc->sc_intr_hdl);
		if (err)
			FUNC10(dev, "Could not tear down irq,"
			    " %d\n", err);
		return (1);
	}
	FUNC12(sc->sc_bus.bdev, &sc->sc_bus);

	FUNC19(sc->sc_vendor, "Freescale", sizeof(sc->sc_vendor));

	/* Set host mode */
	reg = FUNC3(sc->sc_io_tag, sc->sc_io_hdl, 0xA8);
	reg |= 0x3;
	FUNC5(sc->sc_io_tag, sc->sc_io_hdl, 0xA8, reg);

	/* Set flags  and callbacks*/
	sc->sc_flags |= EHCI_SCFLG_TT | EHCI_SCFLG_NORESTERM;
	sc->sc_vendor_post_reset = vybrid_ehci_post_reset;
	sc->sc_vendor_get_port_speed = ehci_get_port_speed_portsc;

	err = FUNC13(sc);
	if (!err) {
		sc->sc_flags |= EHCI_SCFLG_DONEINIT;
		err = FUNC11(sc->sc_bus.bdev);
	} else {
		FUNC10(dev, "USB init failed err=%d\n", err);

		FUNC8(dev, sc->sc_bus.bdev);
		sc->sc_bus.bdev = NULL;

		err = FUNC6(dev, esc->res[5],
		    sc->sc_intr_hdl);
		if (err)
			FUNC10(dev, "Could not tear down irq,"
			    " %d\n", err);
		return (1);
	}
	return (0);
}