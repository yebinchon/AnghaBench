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
struct imx51_gpio_softc {int gpio_npins; int /*<<< orphan*/ * sc_busdev; TYPE_1__* gpio_pins; int /*<<< orphan*/ * gpio_ih; int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_ioh; int /*<<< orphan*/  sc_iot; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_pin; int /*<<< orphan*/  gp_name; int /*<<< orphan*/  gp_flags; int /*<<< orphan*/  gp_caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CAPS ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 int /*<<< orphan*/  GPIO_PIN_INPUT ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  IMX_GPIO_IMR_REG ; 
 int /*<<< orphan*/  IMX_GPIO_OE_REG ; 
 int /*<<< orphan*/  INTR_TYPE_CLK ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int NGPIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct imx51_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct imx51_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct imx51_gpio_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct imx51_gpio_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gpio_pic_filter ; 
 int /*<<< orphan*/  FUNC10 (struct imx51_gpio_softc*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_gpio_spec ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
	struct imx51_gpio_softc *sc;
	int i, irq, unit;

	sc = FUNC7(dev);
	sc->dev = dev;
	sc->gpio_npins = NGPIO;

	FUNC15(&sc->sc_mtx, FUNC6(sc->dev), NULL, MTX_SPIN);

	if (FUNC3(dev, imx_gpio_spec, sc->sc_res)) {
		FUNC9(dev, "could not allocate resources\n");
		FUNC4(dev, imx_gpio_spec, sc->sc_res);
		FUNC14(&sc->sc_mtx);
		return (ENXIO);
	}

	sc->sc_iot = FUNC18(sc->sc_res[0]);
	sc->sc_ioh = FUNC17(sc->sc_res[0]);
	/*
	 * Mask off all interrupts in hardware, then set up interrupt handling.
	 */
	FUNC2(sc, IMX_GPIO_IMR_REG, 0);
	for (irq = 0; irq < 2; irq++) {
#ifdef INTRNG
		if ((bus_setup_intr(dev, sc->sc_res[1 + irq], INTR_TYPE_CLK,
		    gpio_pic_filter, NULL, sc, &sc->gpio_ih[irq]))) {
			device_printf(dev,
			    "WARNING: unable to register interrupt handler\n");
			imx51_gpio_detach(dev);
			return (ENXIO);
		}
#endif		
	}

	unit = FUNC8(dev);
	for (i = 0; i < sc->gpio_npins; i++) {
 		sc->gpio_pins[i].gp_pin = i;
 		sc->gpio_pins[i].gp_caps = DEFAULT_CAPS;
 		sc->gpio_pins[i].gp_flags =
 		    (FUNC1(sc, IMX_GPIO_OE_REG) & (1U << i)) ? GPIO_PIN_OUTPUT :
 		    GPIO_PIN_INPUT;
 		FUNC19(sc->gpio_pins[i].gp_name, GPIOMAXNAME,
 		    "GPIO%d_IO%02d", unit + 1, i);
	}

#ifdef INTRNG
	gpio_pic_register_isrcs(sc);
	intr_pic_register(dev, OF_xref_from_node(ofw_bus_get_node(dev)));
#endif
	sc->sc_busdev = FUNC11(dev);
	
	if (sc->sc_busdev == NULL) {
		FUNC12(dev);
		return (ENXIO);
	}

	return (0);
}