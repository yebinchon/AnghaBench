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
struct as3722_softc {int gpio_npins; struct as3722_gpio_pin** gpio_pins; int /*<<< orphan*/  dev; int /*<<< orphan*/ * gpio_busdev; int /*<<< orphan*/  gpio_lock; } ;
struct as3722_gpio_pin {int pin_caps; int /*<<< orphan*/  pin_name; int /*<<< orphan*/  pin_ctrl_reg; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 scalar_t__ AS3722_GPIO0_CONTROL ; 
 int ENXIO ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_INVIN ; 
 int GPIO_PIN_INVOUT ; 
 int GPIO_PIN_OPENDRAIN ; 
 int GPIO_PIN_OUTPUT ; 
 int GPIO_PIN_PULLDOWN ; 
 int GPIO_PIN_PULLUP ; 
 int GPIO_PIN_PUSHPULL ; 
 int GPIO_PIN_TRISTATE ; 
 int /*<<< orphan*/  M_AS3722_GPIO ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NGPIO ; 
 int FUNC0 (struct as3722_softc*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

int
FUNC6(struct as3722_softc *sc, phandle_t node)
{
	struct as3722_gpio_pin *pin;
	int i, rv;

	FUNC5(&sc->gpio_lock, "AS3722 GPIO lock");
	sc->gpio_npins = NGPIO;
	sc->gpio_pins = FUNC3(sizeof(struct as3722_gpio_pin *) *
	    sc->gpio_npins, M_AS3722_GPIO, M_WAITOK | M_ZERO);


	sc->gpio_busdev = FUNC2(sc->dev);
	if (sc->gpio_busdev == NULL)
		return (ENXIO);
	for (i = 0; i < sc->gpio_npins; i++) {
		sc->gpio_pins[i] = FUNC3(sizeof(struct as3722_gpio_pin),
		    M_AS3722_GPIO, M_WAITOK | M_ZERO);
		pin = sc->gpio_pins[i];
		FUNC4(pin->pin_name, "gpio%d", i);
		pin->pin_caps = GPIO_PIN_INPUT | GPIO_PIN_OUTPUT  |
		    GPIO_PIN_OPENDRAIN | GPIO_PIN_PUSHPULL | GPIO_PIN_TRISTATE |
		    GPIO_PIN_PULLUP | GPIO_PIN_PULLDOWN | GPIO_PIN_INVIN |
		    GPIO_PIN_INVOUT;
		rv = FUNC0(sc, AS3722_GPIO0_CONTROL + i, &pin->pin_ctrl_reg);
		if (rv != 0) {
			FUNC1(sc->dev,
			    "Cannot read configuration for pin %s\n",
			    sc->gpio_pins[i]->pin_name);
		}
	}
	return (0);
}