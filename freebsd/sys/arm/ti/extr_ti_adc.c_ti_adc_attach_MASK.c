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
typedef  int uint32_t ;
struct ti_adc_softc {int sc_tsc_wires; int sc_coord_readouts; int sc_adc_nchannels; int* sc_adc_channels; int sc_x; int sc_y; scalar_t__ sc_pen_down; int /*<<< orphan*/  sc_evdev; void* sc_mem_res; void* sc_irq_res; int /*<<< orphan*/  sc_intrhand; int /*<<< orphan*/  sc_dev; void* sc_charge_delay; void* sc_x_plate_resistance; } ;
typedef  scalar_t__ phandle_t ;
typedef  void* pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ADC_CLKDIV ; 
 int /*<<< orphan*/  ADC_CTRL ; 
 int ADC_CTRL_STEP_ID ; 
 int ADC_CTRL_STEP_WP ; 
 int /*<<< orphan*/  ADC_MAX_VALUE ; 
 int FUNC0 (struct ti_adc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADC_REVISION ; 
 int ADC_REV_CUSTOM_MSK ; 
 int ADC_REV_CUSTOM_SHIFT ; 
 int ADC_REV_FUNC_MSK ; 
 int ADC_REV_FUNC_SHIFT ; 
 int ADC_REV_MAJOR_MSK ; 
 int ADC_REV_MAJOR_SHIFT ; 
 int ADC_REV_MINOR_MSK ; 
 int ADC_REV_RTL_MSK ; 
 int ADC_REV_RTL_SHIFT ; 
 int ADC_REV_SCHEME_MSK ; 
 int ADC_REV_SCHEME_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct ti_adc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_VIRTUAL ; 
 void* DEFAULT_CHARGE_DELAY ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_SYN ; 
 int /*<<< orphan*/  INPUT_PROP_DIRECT ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 scalar_t__ FUNC2 (scalar_t__,char*,void**,int) ; 
 void* FUNC3 (scalar_t__,char*,int,void**) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC6 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_adc_softc*) ; 
 int TI_ADC_NPINS ; 
 int /*<<< orphan*/  FUNC8 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  TSC_ADC_CLK ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ti_adc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct ti_adc_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (scalar_t__,char*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (struct ti_adc_softc*,int*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC30 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  ti_adc_intr ; 
 int /*<<< orphan*/  FUNC31 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC32 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC33 (struct ti_adc_softc*) ; 
 int FUNC34 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC35(device_t dev)
{
	int err, rid, i;
	struct ti_adc_softc *sc;
	uint32_t rev, reg;
	phandle_t node, child;
	pcell_t cell;
	int *channels;
	int nwire_configs;
	int *wire_configs;

	sc = FUNC14(dev);
	sc->sc_dev = dev;

	node = FUNC26(dev);

	sc->sc_tsc_wires = 0;
	sc->sc_coord_readouts = 1;
	sc->sc_x_plate_resistance = 0;
	sc->sc_charge_delay = DEFAULT_CHARGE_DELAY;
	/* Read "tsc" node properties */
	child = FUNC25(node, "tsc");
	if (child != 0 && FUNC4(child, "ti,wires")) {
		if ((FUNC2(child, "ti,wires", &cell, sizeof(cell))) > 0)
			sc->sc_tsc_wires = cell;
		if ((FUNC2(child, "ti,coordinate-readouts", &cell,
		    sizeof(cell))) > 0)
			sc->sc_coord_readouts = cell;
		if ((FUNC2(child, "ti,x-plate-resistance", &cell,
		    sizeof(cell))) > 0)
			sc->sc_x_plate_resistance = cell;
		if ((FUNC2(child, "ti,charge-delay", &cell,
		    sizeof(cell))) > 0)
			sc->sc_charge_delay = cell;
		nwire_configs = FUNC3(child,
		    "ti,wire-config", sizeof(*wire_configs),
		    (void **)&wire_configs);
		if (nwire_configs != sc->sc_tsc_wires) {
			FUNC15(sc->sc_dev,
			    "invalid number of ti,wire-config: %d (should be %d)\n",
			    nwire_configs, sc->sc_tsc_wires);
			FUNC5(wire_configs);
			return (EINVAL);
		}
		err = FUNC27(sc, wire_configs, nwire_configs);
		FUNC5(wire_configs);
		if (err)
			return (EINVAL);
	}

	/* Read "adc" node properties */
	child = FUNC25(node, "adc");
	if (child != 0) {
		sc->sc_adc_nchannels = FUNC3(child,
		    "ti,adc-channels", sizeof(*channels), (void **)&channels);
		if (sc->sc_adc_nchannels > 0) {
			for (i = 0; i < sc->sc_adc_nchannels; i++)
				sc->sc_adc_channels[i] = channels[i];
			FUNC5(channels);
		}
	}

	/* Sanity check FDT data */
	if (sc->sc_tsc_wires + sc->sc_adc_nchannels > TI_ADC_NPINS) {
		FUNC15(dev, "total number of chanels (%d) is larger than %d\n",
		    sc->sc_tsc_wires + sc->sc_adc_nchannels, TI_ADC_NPINS);
		return (ENXIO);
	}

	rid = 0;
	sc->sc_mem_res = FUNC9(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC15(dev, "cannot allocate memory window\n");
		return (ENXIO);
	}

	/* Activate the ADC_TSC module. */
	err = FUNC34(TSC_ADC_CLK);
	if (err)
		return (err);

	rid = 0;
	sc->sc_irq_res = FUNC9(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (!sc->sc_irq_res) {
		FUNC10(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC15(dev, "cannot allocate interrupt\n");
		return (ENXIO);
	}

	if (FUNC11(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, ti_adc_intr, sc, &sc->sc_intrhand) != 0) {
		FUNC10(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
		FUNC10(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC15(dev, "Unable to setup the irq handler.\n");
		return (ENXIO);
	}

	/* Check the ADC revision. */
	rev = FUNC0(sc, ADC_REVISION);
	FUNC15(dev,
	    "scheme: %#x func: %#x rtl: %d rev: %d.%d custom rev: %d\n",
	    (rev & ADC_REV_SCHEME_MSK) >> ADC_REV_SCHEME_SHIFT,
	    (rev & ADC_REV_FUNC_MSK) >> ADC_REV_FUNC_SHIFT,
	    (rev & ADC_REV_RTL_MSK) >> ADC_REV_RTL_SHIFT,
	    (rev & ADC_REV_MAJOR_MSK) >> ADC_REV_MAJOR_SHIFT,
	    rev & ADC_REV_MINOR_MSK,
	    (rev & ADC_REV_CUSTOM_MSK) >> ADC_REV_CUSTOM_SHIFT);

	reg = FUNC0(sc, ADC_CTRL);
	FUNC1(sc, ADC_CTRL, reg | ADC_CTRL_STEP_WP | ADC_CTRL_STEP_ID);

	/*
	 * Set the ADC prescaler to 2400 if touchscreen is not enabled
	 * and to 24 if it is.  This sets the ADC clock to ~10Khz and
	 * ~1Mhz respectively (CLK_M_OSC / prescaler).
	 */
	if (sc->sc_tsc_wires)
		FUNC1(sc, ADC_CLKDIV, 24 - 1);
	else
		FUNC1(sc, ADC_CLKDIV, 2400 - 1);

	FUNC7(sc);

	FUNC29(sc);
	FUNC30(sc);
	FUNC32(sc);
	FUNC33(sc);

	FUNC6(sc);
	FUNC31(sc);
	FUNC8(sc);

#ifdef EVDEV_SUPPORT
	if (sc->sc_tsc_wires > 0) {
		sc->sc_evdev = evdev_alloc();
		evdev_set_name(sc->sc_evdev, device_get_desc(dev));
		evdev_set_phys(sc->sc_evdev, device_get_nameunit(dev));
		evdev_set_id(sc->sc_evdev, BUS_VIRTUAL, 0, 0, 0);
		evdev_support_prop(sc->sc_evdev, INPUT_PROP_DIRECT);
		evdev_support_event(sc->sc_evdev, EV_SYN);
		evdev_support_event(sc->sc_evdev, EV_ABS);
		evdev_support_event(sc->sc_evdev, EV_KEY);

		evdev_support_abs(sc->sc_evdev, ABS_X, 0, 0,
		    ADC_MAX_VALUE, 0, 0, 0);
		evdev_support_abs(sc->sc_evdev, ABS_Y, 0, 0,
		    ADC_MAX_VALUE, 0, 0, 0);

		evdev_support_key(sc->sc_evdev, BTN_TOUCH);

		err = evdev_register(sc->sc_evdev);
		if (err) {
			device_printf(dev,
			    "failed to register evdev: error=%d\n", err);
			ti_adc_detach(dev);
			return (err);
		}

		sc->sc_pen_down = 0;
		sc->sc_x = -1;
		sc->sc_y = -1;
	}
#endif /* EVDEV */

	return (0);
}