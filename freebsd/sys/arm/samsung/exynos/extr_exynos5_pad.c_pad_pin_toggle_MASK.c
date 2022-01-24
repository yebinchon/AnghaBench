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
struct pad_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
struct gpio_bank {scalar_t__ con; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  gp_pin; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pad_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct pad_softc*) ; 
 int FUNC2 (struct pad_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pad_softc*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct pad_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct pad_softc*,int /*<<< orphan*/ ,struct gpio_bank*,int*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin)
{
	struct gpio_bank bank;
	struct pad_softc *sc;
	int pin_shift;
	int reg;
	int i;

	sc = FUNC4(dev);
	for (i = 0; i < sc->gpio_npins; i++) {
		if (sc->gpio_pins[i].gp_pin == pin)
			break;
	}

	if (i >= sc->gpio_npins)
		return (EINVAL);

	if (FUNC5(sc, pin, &bank, &pin_shift) != 0)
		return (EINVAL);

	FUNC0(sc);
	reg = FUNC2(sc, bank.port, bank.con + 0x4);
	if (reg & (1 << pin_shift))
		reg &= ~(1 << pin_shift);
	else
		reg |= (1 << pin_shift);
	FUNC3(sc, bank.port, bank.con + 0x4, reg);
	FUNC1(sc);

	return (0);
}