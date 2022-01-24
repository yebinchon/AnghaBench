#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct bcm_gpio_softc {int sc_gpio_npins; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_res; int /*<<< orphan*/ * sc_busdev; TYPE_1__* sc_gpio_pins; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_pin; int /*<<< orphan*/  gp_flags; int /*<<< orphan*/  gp_caps; int /*<<< orphan*/  gp_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_GPIO_DEFAULT_CAPS ; 
 int BCM_GPIO_PINS ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_gpio_softc*,int) ; 
 int FUNC3 (struct bcm_gpio_softc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm_gpio_res_spec ; 
 struct bcm_gpio_softc* bcm_gpio_sc ; 
 int /*<<< orphan*/  FUNC6 (struct bcm_gpio_softc*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bcm_gpio_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
	int i, j;
	phandle_t gpio;
	struct bcm_gpio_softc *sc;
	uint32_t func;

	if (bcm_gpio_sc != NULL)
		return (ENXIO);

	bcm_gpio_sc = sc = FUNC9(dev);
 	sc->sc_dev = dev;
	FUNC15(&sc->sc_mtx, "bcm gpio", "gpio", MTX_SPIN);
	if (FUNC7(dev, bcm_gpio_res_spec, sc->sc_res) != 0) {
		FUNC10(dev, "cannot allocate resources\n");
		goto fail;
	}
	sc->sc_bst = FUNC18(sc->sc_res[0]);
	sc->sc_bsh = FUNC17(sc->sc_res[0]);
	/* Setup the GPIO interrupt handler. */
	if (FUNC4(dev)) {
		FUNC10(dev, "unable to setup the gpio irq handler\n");
		goto fail;
	}
	/* Find our node. */
	gpio = FUNC16(sc->sc_dev);
	if (!FUNC0(gpio, "gpio-controller"))
		/* Node is not a GPIO controller. */
		goto fail;
	/*
	 * Find the read-only pins.  These are pins we never touch or bad
	 * things could happen.
	 */
	if (FUNC3(sc) == -1)
		goto fail;
	/* Initialize the software controlled pins. */
	for (i = 0, j = 0; j < BCM_GPIO_PINS; j++) {
		FUNC19(sc->sc_gpio_pins[i].gp_name, GPIOMAXNAME,
		    "pin %d", j);
		func = FUNC2(sc, j);
		sc->sc_gpio_pins[i].gp_pin = j;
		sc->sc_gpio_pins[i].gp_caps = BCM_GPIO_DEFAULT_CAPS;
		sc->sc_gpio_pins[i].gp_flags = FUNC1(func);
		i++;
	}
	sc->sc_gpio_npins = i;
	FUNC6(sc);
	sc->sc_busdev = FUNC13(dev);
	if (sc->sc_busdev == NULL)
		goto fail;

	FUNC12(dev, "brcm,pins");
	FUNC11(dev);

	return (0);

fail:
	FUNC5(dev);
	FUNC8(dev, bcm_gpio_res_spec, sc->sc_res);
	FUNC14(&sc->sc_mtx);

	return (ENXIO);
}