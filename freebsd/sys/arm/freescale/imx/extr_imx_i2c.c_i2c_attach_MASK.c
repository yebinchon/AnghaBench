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
typedef  int /*<<< orphan*/  wrkstr ;
struct i2c_softc {int rb_pinctl_idx; int /*<<< orphan*/  rb_sdapin; int /*<<< orphan*/  rb_sclpin; int /*<<< orphan*/  dev; int /*<<< orphan*/  debug; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/ * res; scalar_t__ rid; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  ich_func_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ bus_generic_attach ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct i2c_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	char wrkstr[16];
	struct i2c_softc *sc;
	phandle_t node;
	int err, cfgidx;

	sc = FUNC6(dev);
	sc->dev = dev;
	sc->rid = 0;

	sc->res = FUNC3(dev, SYS_RES_MEMORY, &sc->rid,
	    RF_ACTIVE);
	if (sc->res == NULL) {
		FUNC9(dev, "could not allocate resources");
		return (ENXIO);
	}

	sc->iicbus = FUNC5(dev, "iicbus", -1);
	if (sc->iicbus == NULL) {
		FUNC9(dev, "could not add iicbus child");
		return (ENXIO);
	}

	/* Set up debug-enable sysctl. */
	FUNC1(FUNC7(sc->dev), 
	    FUNC2(FUNC8(sc->dev)),
	    OID_AUTO, "debug", CTLFLAG_RWTUN, &sc->debug, 0,
	    "Enable debug; 1=reads/writes, 2=add starts/stops");

	/*
	 * Set up for bus recovery using gpio pins, if the pinctrl and gpio
	 * properties are present.  This is optional.  If all the config data is
	 * not in place, we just don't do gpio bitbang bus recovery.
	 */
	node = FUNC14(sc->dev);

	err = FUNC10(dev, node, "scl-gpios",
	    &sc->rb_sclpin);
	if (err != 0)
		goto no_recovery;
	err = FUNC10(dev, node, "sda-gpios",
	    &sc->rb_sdapin);
	if (err != 0)
		goto no_recovery;

	/*
	 * Preset the gpio pins to output high (idle bus state).  The signal
	 * won't actually appear on the pins until the bus recovery code changes
	 * the pinmux config from i2c to gpio.
	 */
	FUNC12(sc->rb_sclpin, GPIO_PIN_OUTPUT);
	FUNC12(sc->rb_sdapin, GPIO_PIN_OUTPUT);
	FUNC11(sc->rb_sclpin, true);
	FUNC11(sc->rb_sdapin, true);

	/*
	 * Obtain the index of pinctrl node for bus recovery using gpio pins,
	 * then confirm that pinctrl properties exist for that index and for the
	 * default pinctrl-0.  If sc->rb_pinctl_idx is non-zero, the reset code
	 * will also do a bus recovery, so setting this value must be last.
	 */
	err = FUNC13(node, "pinctrl-names", "gpio", &cfgidx);
	if (err == 0) {
		FUNC15(wrkstr, sizeof(wrkstr), "pinctrl-%d", cfgidx);
		if (FUNC0(node, "pinctrl-0") && FUNC0(node, wrkstr))
			sc->rb_pinctl_idx = cfgidx;
	}

no_recovery:

	/* We don't do a hardware reset here because iicbus_attach() does it. */

	/* Probe and attach the iicbus when interrupts are available. */
	FUNC4((ich_func_t)bus_generic_attach, dev);
	return (0);
}