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
typedef  unsigned int uint32_t ;
struct rk30_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {unsigned int gp_pin; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct rk30_gpio_softc*) ; 
 unsigned int FUNC1 (struct rk30_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RK30_GPIO_SWPORT_DR ; 
 int /*<<< orphan*/  FUNC2 (struct rk30_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rk30_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 struct rk30_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, unsigned int value)
{
	int i;
	struct rk30_gpio_softc *sc;
	uint32_t data;

 	sc = FUNC4(dev);
	for (i = 0; i < sc->sc_gpio_npins; i++) {
		if (sc->sc_gpio_pins[i].gp_pin == pin)
			break;
	}
	if (i >= sc->sc_gpio_npins)
		return (EINVAL);
	FUNC0(sc);
	data = FUNC1(sc, RK30_GPIO_SWPORT_DR);
	if (value)
		data |= (1U << pin);
	else
		data &= ~(1U << pin);
	FUNC3(sc, RK30_GPIO_SWPORT_DR, data);
	FUNC2(sc);

	return (0);
}