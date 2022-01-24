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
struct as3722_softc {size_t gpio_npins; TYPE_1__** gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int pin_ctrl_reg; } ;

/* Variables and functions */
 scalar_t__ AS3722_GPIO0_CONTROL ; 
 int AS3722_GPIO_IOSF_MASK ; 
 int AS3722_GPIO_IOSF_SHIFT ; 
 int AS3722_GPIO_MODE_MASK ; 
 int AS3722_GPIO_MODE_SHIFT ; 
 int AS3722_IOSF_GPIO ; 
 int AS3722_MODE_PUSH_PULL ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct as3722_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct as3722_softc*) ; 
 int FUNC2 (struct as3722_softc*,scalar_t__,int) ; 
 int FUNC3 (struct as3722_softc*,size_t,size_t) ; 
 struct as3722_softc* FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev, uint32_t pin, uint32_t flags)
{
	struct as3722_softc *sc;
	uint8_t ctrl, mode, iosf;
	int rv;

	sc = FUNC4(dev);
	if (pin >= sc->gpio_npins)
		return (EINVAL);

	FUNC0(sc);
	ctrl = sc->gpio_pins[pin]->pin_ctrl_reg;
	iosf = (ctrl >> AS3722_GPIO_IOSF_SHIFT) & AS3722_GPIO_IOSF_MASK;
	/* Is pin in GPIO mode ? */
	if (iosf != AS3722_IOSF_GPIO) {
		FUNC1(sc);
		return (ENXIO);
	}
	mode = FUNC3(sc, pin, flags);
	ctrl &= ~(AS3722_GPIO_MODE_MASK << AS3722_GPIO_MODE_SHIFT);
	ctrl |= AS3722_MODE_PUSH_PULL << AS3722_GPIO_MODE_SHIFT;
	rv = 0;
	if (ctrl != sc->gpio_pins[pin]->pin_ctrl_reg) {
		rv = FUNC2(sc, AS3722_GPIO0_CONTROL + pin, ctrl);
		sc->gpio_pins[pin]->pin_ctrl_reg = ctrl;
	}
	FUNC1(sc);
	return (rv);
}