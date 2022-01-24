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
struct bcm_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_pin; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_gpio_softc*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct bcm_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bcm_gpio_softc*,int,int) ; 
 int EINVAL ; 
 scalar_t__ FUNC9 (struct bcm_gpio_softc*,int) ; 
 struct bcm_gpio_softc* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev, uint32_t pin)
{
	struct bcm_gpio_softc *sc = FUNC10(dev);
	uint32_t bank, data, reg;
	int i;

	for (i = 0; i < sc->sc_gpio_npins; i++) {
		if (sc->sc_gpio_pins[i].gp_pin == pin)
			break;
	}
	if (i >= sc->sc_gpio_npins)
		return (EINVAL);
	/* We never write to read-only/reserved pins. */
	if (FUNC9(sc, pin))
		return (EINVAL);
	FUNC4(sc);
	bank = FUNC0(pin);
	data = FUNC6(sc, FUNC2(bank));
	if (data & FUNC5(pin))
		reg = FUNC1(bank);
	else
		reg = FUNC3(bank);
	FUNC8(sc, reg, FUNC5(pin));
	FUNC7(sc);

	return (0);
}