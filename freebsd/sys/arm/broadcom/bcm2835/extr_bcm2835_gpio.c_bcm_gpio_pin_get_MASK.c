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
struct bcm_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_gpio_softc*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct bcm_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_gpio_softc*) ; 
 int EINVAL ; 
 struct bcm_gpio_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint32_t pin, unsigned int *val)
{
	struct bcm_gpio_softc *sc = FUNC6(dev);
	uint32_t bank, reg_data;
	int i;

	for (i = 0; i < sc->sc_gpio_npins; i++) {
		if (sc->sc_gpio_pins[i].gp_pin == pin)
			break;
	}
	if (i >= sc->sc_gpio_npins)
		return (EINVAL);
	bank = FUNC0(pin);
	FUNC2(sc);
	reg_data = FUNC4(sc, FUNC1(bank));
	FUNC5(sc);
	*val = (reg_data & FUNC3(pin)) ? 1 : 0;

	return (0);
}