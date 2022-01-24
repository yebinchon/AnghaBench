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
typedef  int uint8_t ;
typedef  size_t uint32_t ;
struct mv_gpio_softc {TYPE_1__* gpio_setup; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int MV_GPIO_IN_DEBOUNCE ; 
 int MV_GPIO_IN_IRQ_DOUBLE_EDGE ; 
 int MV_GPIO_IN_POL_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t,int) ; 

uint8_t
FUNC4(device_t dev, uint32_t pin)
{
	uint8_t state;
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC1(dev);

	FUNC0();

	if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_DEBOUNCE) {
		if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_POL_LOW)
			state = (FUNC2(dev, pin) ? 0 : 1);
		else
			state = (FUNC2(dev, pin) ? 1 : 0);
	} else if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_IRQ_DOUBLE_EDGE) {
		if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_POL_LOW)
			state = (FUNC3(dev, pin, 1) ? 0 : 1);
		else
			state = (FUNC3(dev, pin, 1) ? 1 : 0);
	} else
		state = (FUNC3(dev, pin, 0) ? 1 : 0);

	return (state);
}