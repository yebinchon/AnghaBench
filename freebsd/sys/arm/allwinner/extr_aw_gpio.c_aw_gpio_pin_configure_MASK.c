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
typedef  int u_int ;
struct aw_gpio_softc {TYPE_1__* padconf; } ;
struct TYPE_2__ {scalar_t__ npins; } ;

/* Variables and functions */
 scalar_t__ AW_GPIO_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct aw_gpio_softc*) ; 
 int /*<<< orphan*/  AW_GPIO_NONE ; 
 scalar_t__ AW_GPIO_OUTPUT ; 
 int /*<<< orphan*/  AW_GPIO_PULLDOWN ; 
 int /*<<< orphan*/  AW_GPIO_PULLUP ; 
 int EINVAL ; 
 scalar_t__ GPIO_PIN_INPUT ; 
 scalar_t__ GPIO_PIN_OUTPUT ; 
 scalar_t__ GPIO_PIN_PRESET_HIGH ; 
 scalar_t__ GPIO_PIN_PRESET_LOW ; 
 scalar_t__ GPIO_PIN_PULLDOWN ; 
 scalar_t__ GPIO_PIN_PULLUP ; 
 scalar_t__ FUNC1 (struct aw_gpio_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct aw_gpio_softc*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct aw_gpio_softc*,scalar_t__,int) ; 
 int FUNC4 (struct aw_gpio_softc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct aw_gpio_softc*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct aw_gpio_softc *sc, uint32_t pin, uint32_t flags)
{
	u_int val;
	int err = 0;

	/* Must be called with lock held. */
	FUNC0(sc);

	if (pin > sc->padconf->npins)
		return (EINVAL);

	/* Manage input/output. */
	if (flags & GPIO_PIN_INPUT) {
		err = FUNC4(sc, pin, AW_GPIO_INPUT);
	} else if ((flags & GPIO_PIN_OUTPUT) &&
	    FUNC1(sc, pin) != AW_GPIO_OUTPUT) {
		if (flags & GPIO_PIN_PRESET_LOW) {
			FUNC3(sc, pin, 0);
		} else if (flags & GPIO_PIN_PRESET_HIGH) {
			FUNC3(sc, pin, 1);
		} else {
			/* Read the pin and preset output to current state. */
			err = FUNC4(sc, pin, AW_GPIO_INPUT);
			if (err == 0) {
				FUNC2(sc, pin, &val);
				FUNC3(sc, pin, val);
			}
		}
		if (err == 0)
			err = FUNC4(sc, pin, AW_GPIO_OUTPUT);
	}

	if (err)
		return (err);

	/* Manage Pull-up/pull-down. */
	if (flags & GPIO_PIN_PULLUP)
		FUNC5(sc, pin, AW_GPIO_PULLUP);
	else if (flags & GPIO_PIN_PULLDOWN)
		FUNC5(sc, pin, AW_GPIO_PULLDOWN);
	else
		FUNC5(sc, pin, AW_GPIO_NONE);

	return (0);
}