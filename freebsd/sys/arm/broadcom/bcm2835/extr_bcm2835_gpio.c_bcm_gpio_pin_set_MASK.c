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
typedef  int /*<<< orphan*/  uint32_t ;
struct bcm_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  gp_pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC7 (struct bcm_gpio_softc*,int /*<<< orphan*/ ) ; 
 struct bcm_gpio_softc* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, uint32_t pin, unsigned int value)
{
	struct bcm_gpio_softc *sc = FUNC8(dev);
	uint32_t bank, reg;
	int i;

	for (i = 0; i < sc->sc_gpio_npins; i++) {
		if (sc->sc_gpio_pins[i].gp_pin == pin)
			break;
	}
	if (i >= sc->sc_gpio_npins)
		return (EINVAL);
	/* We never write to read-only/reserved pins. */
	if (FUNC7(sc, pin))
		return (EINVAL);
	FUNC3(sc);
	bank = FUNC0(pin);
	if (value)
		reg = FUNC2(bank);
	else
		reg = FUNC1(bank);
	FUNC6(sc, reg, FUNC4(pin));
	FUNC5(sc);

	return (0);
}