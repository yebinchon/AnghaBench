#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {scalar_t__ sc_id; scalar_t__ sc_mode; TYPE_1__ sc_bus; struct musbotg_super_softc* sc_platform_data; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; int /*<<< orphan*/  sc_ep_int_set; struct TYPE_6__* sc_clocks_arg; int /*<<< orphan*/ * sc_clocks_off; int /*<<< orphan*/ * sc_clocks_on; } ;
struct musbotg_super_softc {TYPE_2__ sc_otg; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_irq_rid; } ;
typedef  int /*<<< orphan*/  mode ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 void* MUSB2_DEVICE_MODE ; 
 scalar_t__ MUSB2_HOST_MODE ; 
 int /*<<< orphan*/  MUSB2_MAX_DEVICES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 size_t RES_USBCORE ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  USBCTRL_INTEN_CLR0 ; 
 int /*<<< orphan*/  USBCTRL_INTEN_SET1 ; 
 int USBCTRL_INTEN_USB_ALL ; 
 int USBCTRL_INTEN_USB_SOF ; 
 int /*<<< orphan*/  USBCTRL_MODE ; 
 int USBCTRL_MODE_IDDIG ; 
 int USBCTRL_MODE_IDDIGMUX ; 
 int FUNC1 (struct musbotg_super_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBCTRL_UTMI ; 
 int USBCTRL_UTMI_FSDATAEXT ; 
 int /*<<< orphan*/  FUNC2 (struct musbotg_super_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  am335x_musbotg_mem_spec ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct musbotg_super_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  musbotg_clocks_off ; 
 int /*<<< orphan*/  musbotg_clocks_on ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  musbotg_ep_int_set ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct musbotg_super_softc*) ; 
 scalar_t__ musbotg_wrapper_interrupt ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 scalar_t__ FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
	struct musbotg_super_softc *sc = FUNC8(dev);
	char mode[16];
	int err;
	uint32_t reg;

	sc->sc_otg.sc_id = FUNC9(dev);

	/* Request the memory resources */
	err = FUNC5(dev, am335x_musbotg_mem_spec,
		sc->sc_mem_res);
	if (err) {
		FUNC10(dev,
		    "Error: could not allocate mem resources\n");
		return (ENXIO);
	}

	/* Request the IRQ resources */
	sc->sc_otg.sc_irq_res = FUNC4(dev, SYS_RES_IRQ,
	    &sc->sc_irq_rid, RF_ACTIVE);
	if (sc->sc_otg.sc_irq_res == NULL) {
		FUNC10(dev,
		    "Error: could not allocate irq resources\n");
		return (ENXIO);
	}

	/* setup MUSB OTG USB controller interface softc */
	sc->sc_otg.sc_clocks_on = &musbotg_clocks_on;
	sc->sc_otg.sc_clocks_off = &musbotg_clocks_off;
	sc->sc_otg.sc_clocks_arg = &sc->sc_otg;

	sc->sc_otg.sc_ep_int_set = musbotg_ep_int_set;

	/* initialise some bus fields */
	sc->sc_otg.sc_bus.parent = dev;
	sc->sc_otg.sc_bus.devices = sc->sc_otg.sc_devices;
	sc->sc_otg.sc_bus.devices_max = MUSB2_MAX_DEVICES;
	sc->sc_otg.sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC21(&sc->sc_otg.sc_bus,
	    FUNC3(dev), NULL)) {
		FUNC10(dev,
		    "Failed allocate bus mem for musb\n");
		return (ENOMEM);
	}
	sc->sc_otg.sc_io_res = sc->sc_mem_res[RES_USBCORE];
	sc->sc_otg.sc_io_tag =
	    FUNC18(sc->sc_otg.sc_io_res);
	sc->sc_otg.sc_io_hdl =
	    FUNC17(sc->sc_otg.sc_io_res);
	sc->sc_otg.sc_io_size =
	    FUNC19(sc->sc_otg.sc_io_res);

	sc->sc_otg.sc_bus.bdev = FUNC7(dev, "usbus", -1);
	if (!(sc->sc_otg.sc_bus.bdev)) {
		FUNC10(dev, "No busdev for musb\n");
		goto error;
	}
	FUNC12(sc->sc_otg.sc_bus.bdev,
	    &sc->sc_otg.sc_bus);

	err = FUNC6(dev, sc->sc_otg.sc_irq_res,
	    INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)musbotg_wrapper_interrupt,
	    &sc->sc_otg, &sc->sc_otg.sc_intr_hdl);
	if (err) {
		sc->sc_otg.sc_intr_hdl = NULL;
		FUNC10(dev,
		    "Failed to setup interrupt for musb\n");
		goto error;
	}

	sc->sc_otg.sc_platform_data = sc;
	if (FUNC0(FUNC16(dev), "dr_mode", mode,
	    sizeof(mode)) > 0) {
		if (FUNC20(mode, "host") == 0)
			sc->sc_otg.sc_mode = MUSB2_HOST_MODE;
		else
			sc->sc_otg.sc_mode = MUSB2_DEVICE_MODE;
	} else {
		/* Beaglebone defaults: USB0 device, USB1 HOST. */
		if (sc->sc_otg.sc_id == 0)
			sc->sc_otg.sc_mode = MUSB2_DEVICE_MODE;
		else
			sc->sc_otg.sc_mode = MUSB2_HOST_MODE;
	}

	/*
	 * software-controlled function
	 */

	if (sc->sc_otg.sc_mode == MUSB2_HOST_MODE) {
		reg = FUNC1(sc, USBCTRL_MODE);
		reg |= USBCTRL_MODE_IDDIGMUX;
		reg &= ~USBCTRL_MODE_IDDIG;
		FUNC2(sc, USBCTRL_MODE, reg);
		FUNC2(sc, USBCTRL_UTMI,
		    USBCTRL_UTMI_FSDATAEXT);
	} else {
		reg = FUNC1(sc, USBCTRL_MODE);
		reg |= USBCTRL_MODE_IDDIGMUX;
		reg |= USBCTRL_MODE_IDDIG;
		FUNC2(sc, USBCTRL_MODE, reg);
	}

	reg = USBCTRL_INTEN_USB_ALL & ~USBCTRL_INTEN_USB_SOF;
	FUNC2(sc, USBCTRL_INTEN_SET1, reg);
	FUNC2(sc, USBCTRL_INTEN_CLR0, 0xffffffff);

	err = FUNC14(&sc->sc_otg);
	if (!err)
		err = FUNC11(sc->sc_otg.sc_bus.bdev);

	if (err)
		goto error;

	/* poll VBUS one time */
	FUNC15(sc);

	return (0);

error:
	FUNC13(dev);
	return (ENXIO);
}