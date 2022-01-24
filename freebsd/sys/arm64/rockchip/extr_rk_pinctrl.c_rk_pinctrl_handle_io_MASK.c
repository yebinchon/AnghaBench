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
typedef  scalar_t__ uint32_t ;
struct rk_pinctrl_softc {int /*<<< orphan*/  dev; TYPE_1__* conf; } ;
struct rk_pinctrl_gpio {scalar_t__ bank; int /*<<< orphan*/ * gpio_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
struct TYPE_2__ {int ngpio_bank; struct rk_pinctrl_gpio* gpio_bank; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ GPIO_PIN_INPUT ; 
 scalar_t__ GPIO_PIN_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(struct rk_pinctrl_softc *sc, phandle_t node, uint32_t bank,
uint32_t pin)
{
	bool have_cfg, have_direction, have_value;
	uint32_t  direction_value, pin_value;
	struct rk_pinctrl_gpio *gpio;
	int i, rv;

	have_cfg = false;
	have_direction = false;
	have_value = false;

	/* Get (subset of) GPIO pin properties. */
	if (FUNC2(node, "output-disable")) {
		have_cfg = true;
		have_direction = true;
		direction_value = GPIO_PIN_INPUT;
	}

	if (FUNC2(node, "output-enable")) {
		have_cfg = true;
		have_direction = true;
		direction_value = GPIO_PIN_OUTPUT;
	}

	if (FUNC2(node, "output-low")) {
		have_cfg = true;
		have_direction = true;
		direction_value = GPIO_PIN_OUTPUT;
		have_value = true;
		pin_value = 0;
	}

	if (FUNC2(node, "output-high")) {
		have_cfg = true;
		have_direction = true;
		direction_value = GPIO_PIN_OUTPUT;
		have_value = true;
		pin_value = 1;
	}

	if (!have_cfg)
		return (0);

	/* Find gpio */
	gpio = NULL;
	for(i = 0; i < sc->conf->ngpio_bank; i++) {
		if (bank ==  sc->conf->gpio_bank[i].bank) {
			gpio = sc->conf->gpio_bank + i;
			break;
		}
	}
	if (gpio == NULL) {
		FUNC3(sc->dev, "Cannot find GPIO bank %d\n", bank);
		return (ENXIO);
	}
	if (gpio->gpio_dev == NULL) {
		FUNC3(sc->dev,
		    "No GPIO subdevice found for bank %d\n", bank);
		return (ENXIO);
	}

	rv = 0;
	if (have_value) {
		rv = FUNC0(gpio->gpio_dev, pin, pin_value);
		if (rv != 0) {
			FUNC3(sc->dev, "Cannot set GPIO value: %d\n",
			    rv);
			return (rv);
		}
	}

	if (have_direction) {
		rv = FUNC1(gpio->gpio_dev, pin, direction_value);
		if (rv != 0) {
			FUNC3(sc->dev,
			    "Cannot set GPIO direction: %d\n", rv);
			return (rv);
		}
	}

	return (0);
}