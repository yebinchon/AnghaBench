#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct mv_gpio_softc {int debounced_state_hi; int debounced_state_lo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int GPIO_PINS_PER_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev, int pin, uint8_t new_state)
{
	uint32_t *old_state;
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC1(dev);

	FUNC0();

	if (pin >= GPIO_PINS_PER_REG) {
		old_state = &sc->debounced_state_hi;
		pin -= GPIO_PINS_PER_REG;
	} else
		old_state = &sc->debounced_state_lo;

	if (new_state)
		*old_state |= (1 << pin);
	else
		*old_state &= ~(1 << pin);
}