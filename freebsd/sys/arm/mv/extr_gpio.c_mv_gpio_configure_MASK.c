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
typedef  int uint32_t ;
struct mv_gpio_softc {int pin_num; scalar_t__ irq_num; TYPE_1__* gpio_setup; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OPENDRAIN ; 
 int GPIO_PIN_OUTPUT ; 
 int MV_GPIO_IN_DEBOUNCE ; 
 int MV_GPIO_IN_POL_LOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int MV_GPIO_OUT_BLINK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC9(device_t dev, uint32_t pin, uint32_t flags, uint32_t mask)
{
	int error;
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC2(dev);
	error = 0;

	if (pin >= sc->pin_num)
		return (EINVAL);

	/* check flags consistency */
	if (((flags & mask) & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) ==
	    (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT))
		return (EINVAL);

	if (mask & MV_GPIO_IN_DEBOUNCE) {
		if (sc->irq_num == 0)
			return (EINVAL);
		error = FUNC4(dev, pin);
		if (error != 0)
			return (error);
	}

	FUNC0();

	if ((mask & flags) & GPIO_PIN_INPUT)
		FUNC6(dev, pin, 0);
	if ((mask & flags) & GPIO_PIN_OUTPUT) {
		if ((flags & mask) & GPIO_PIN_OPENDRAIN)
			FUNC8(dev, pin, 0);
		else
			FUNC8(dev, pin, 1);
		FUNC6(dev, pin, 1);
	}

	if (mask & MV_GPIO_OUT_BLINK)
		FUNC3(dev, pin, flags & MV_GPIO_OUT_BLINK);
	if (mask & MV_GPIO_IN_POL_LOW)
		FUNC7(dev, pin, flags & MV_GPIO_IN_POL_LOW, 0);
	if (mask & MV_GPIO_IN_DEBOUNCE) {
		error = FUNC5(dev, pin);
		if (error) {
			FUNC1();
			return (error);
		}
	}

	sc->gpio_setup[pin].gp_flags &= ~(mask);
	sc->gpio_setup[pin].gp_flags |= (flags & mask);

	FUNC1();

	return (0);
}