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
typedef  int /*<<< orphan*/  u_long ;
struct rk30_gpio_softc {int sc_gpio_npins; int /*<<< orphan*/  sc_dev; TYPE_1__* sc_gpio_pins; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  ihandle_t ;
struct TYPE_2__ {int gp_pin; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_INPUT ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rk30_gpio_softc*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct rk30_gpio_softc* rk30_gpio_sc ; 

int
FUNC4(phandle_t ctrl, pcell_t *gpios, int len)
{
	struct rk30_gpio_softc *sc;
	pcell_t gpio_cells;
	int inc, t, tuples, tuple_size;
	int dir, flags, pin, i;
	u_long gpio_ctrl, size;

	sc = rk30_gpio_sc;
	if (sc == NULL)
		return ENXIO;

	if (FUNC0(ctrl, "#gpio-cells", &gpio_cells, sizeof(pcell_t)) < 0)
		return (ENXIO);
	if (gpio_cells != 2)
		return (ENXIO);

	tuple_size = gpio_cells * sizeof(pcell_t) + sizeof(phandle_t);
	tuples = len / tuple_size;

	if (FUNC1(ctrl, &gpio_ctrl, &size))
		return (ENXIO);

	/*
	 * Skip controller reference, since controller's phandle is given
	 * explicitly (in a function argument).
	 */
	inc = sizeof(ihandle_t) / sizeof(pcell_t);
	gpios += inc;
	for (t = 0; t < tuples; t++) {
		pin = gpios[0];
		dir = gpios[1];
		flags = gpios[2];

		for (i = 0; i < sc->sc_gpio_npins; i++) {
			if (sc->sc_gpio_pins[i].gp_pin == pin)
				break;
		}
		if (i >= sc->sc_gpio_npins)
			return (EINVAL);

		FUNC2(sc, &sc->sc_gpio_pins[i], flags);

		if (dir == 1) {
			/* Input. */
			FUNC3(sc->sc_dev, pin, GPIO_PIN_INPUT);
		} else {
			/* Output. */
			FUNC3(sc->sc_dev, pin, GPIO_PIN_OUTPUT);
		}
		gpios += gpio_cells + inc;
	}

	return (0);
}