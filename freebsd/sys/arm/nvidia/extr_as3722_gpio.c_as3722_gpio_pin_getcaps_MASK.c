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
typedef  size_t uint32_t ;
struct as3722_softc {size_t gpio_npins; TYPE_1__** gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {size_t pin_caps; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct as3722_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct as3722_softc*) ; 
 struct as3722_softc* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev, uint32_t pin, uint32_t *caps)
{
	struct as3722_softc *sc;

	sc = FUNC2(dev);
	if (pin >= sc->gpio_npins)
		return (EINVAL);
	FUNC0(sc);
	*caps = sc->gpio_pins[pin]->pin_caps;
	FUNC1(sc);
	return (0);
}