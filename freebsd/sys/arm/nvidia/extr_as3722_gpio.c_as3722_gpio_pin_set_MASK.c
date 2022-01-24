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
typedef  scalar_t__ uint32_t ;
struct as3722_softc {scalar_t__ gpio_npins; TYPE_1__** gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int pin_ctrl_reg; } ;

/* Variables and functions */
 int AS3722_GPIO_INVERT ; 
 int /*<<< orphan*/  AS3722_GPIO_SIGNAL_OUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct as3722_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct as3722_softc*) ; 
 int FUNC2 (struct as3722_softc*,int /*<<< orphan*/ ,int,int) ; 
 struct as3722_softc* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(device_t dev, uint32_t pin, uint32_t val)
{
	struct as3722_softc *sc;
	uint8_t tmp;
	int rv;

	sc = FUNC3(dev);
	if (pin >= sc->gpio_npins)
		return (EINVAL);

	tmp =  (val != 0) ? 1 : 0;
	if (sc->gpio_pins[pin]->pin_ctrl_reg & AS3722_GPIO_INVERT)
		tmp ^= 1;

	FUNC0(sc);
	rv = FUNC2(sc, AS3722_GPIO_SIGNAL_OUT, (1 << pin), (tmp << pin));
	FUNC1(sc);
	return (rv);
}