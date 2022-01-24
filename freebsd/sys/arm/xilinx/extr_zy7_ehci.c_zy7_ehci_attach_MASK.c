#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {int sc_flags; TYPE_2__ sc_bus; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_vendor_get_port_speed; int /*<<< orphan*/  sc_vendor_post_reset; int /*<<< orphan*/  sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/  sc_devices; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int /*<<< orphan*/  EHCI_REG_OFFSET ; 
 int /*<<< orphan*/  EHCI_REG_SIZE ; 
 int EHCI_SCFLG_DONEINIT ; 
 int EHCI_SCFLG_NORESTERM ; 
 int EHCI_SCFLG_TT ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZY7_USB_TXFILLTUNING ; 
 int ZY7_USB_TXFILLTUNING_TXFIFOTHRES_SHFT ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ehci_get_port_speed_portsc ; 
 int FUNC12 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zy7_ehci_post_reset ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
	ehci_softc_t *sc = FUNC7(dev);
	bus_space_handle_t bsh;
	int err, rid;
	
	/* initialize some bus fields */
	sc->sc_bus.parent = dev;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC17(&sc->sc_bus,
	    FUNC0(dev), &ehci_iterate_hw_softc))
		return (ENOMEM);

	/* Allocate memory. */
	rid = 0;
	sc->sc_io_res = FUNC1(dev, SYS_RES_MEMORY,
					       &rid, RF_ACTIVE);
	if (sc->sc_io_res == NULL) {
		FUNC8(dev, "Can't allocate memory");
		FUNC18(dev);
		return (ENOMEM);
	}

	sc->sc_io_tag = FUNC15(sc->sc_io_res);
	bsh = FUNC14(sc->sc_io_res);
	sc->sc_io_size = EHCI_REG_SIZE;

	if (FUNC3(sc->sc_io_tag, bsh, EHCI_REG_OFFSET,
				sc->sc_io_size, &sc->sc_io_hdl) != 0)
		FUNC13("%s: unable to subregion USB host registers",
		      FUNC6(dev));

	/* Allocate IRQ. */
	rid = 0;
	sc->sc_irq_res = FUNC1(dev, SYS_RES_IRQ, &rid,
						RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC8(dev, "Can't allocate IRQ\n");
		FUNC18(dev);
		return (ENOMEM);
	}

	/* Add USB device */
	sc->sc_bus.bdev = FUNC5(dev, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC8(dev, "Could not add USB device\n");
		FUNC18(dev);
		return (ENXIO);
	}
	FUNC11(sc->sc_bus.bdev, &sc->sc_bus);
	FUNC10(sc->sc_bus.bdev, "Zynq-7000 ehci USB 2.0 controller");

	FUNC16(sc->sc_vendor, "Xilinx"); /* or IP vendor? */

	/* Activate the interrupt */
	err = FUNC2(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
			     NULL, (driver_intr_t *)ehci_interrupt, sc,
			     &sc->sc_intr_hdl);
	if (err) {
		FUNC8(dev, "Cannot setup IRQ\n");
		FUNC18(dev);
		return (err);
	}

	/* Customization. */
	sc->sc_flags |= EHCI_SCFLG_TT |	EHCI_SCFLG_NORESTERM;
	sc->sc_vendor_post_reset = zy7_ehci_post_reset;
	sc->sc_vendor_get_port_speed = ehci_get_port_speed_portsc;

	/* Modify FIFO burst threshold from 2 to 8. */
	FUNC4(sc->sc_io_tag, bsh,
			  ZY7_USB_TXFILLTUNING,
			  8 << ZY7_USB_TXFILLTUNING_TXFIFOTHRES_SHFT);

	/* Handle PHY options. */
	if (FUNC19(dev, sc->sc_io_tag, bsh) < 0) {
		FUNC8(dev, "Cannot config phy!\n");
		FUNC18(dev);
		return (EIO);
	}

	/* Init ehci. */
	err = FUNC12(sc);
	if (!err) {
		sc->sc_flags |= EHCI_SCFLG_DONEINIT;
		err = FUNC9(sc->sc_bus.bdev);
	}
	if (err) {
		FUNC8(dev, "USB init failed err=%d\n", err);
		FUNC18(dev);
		return (err);
	}

	return (0);
}