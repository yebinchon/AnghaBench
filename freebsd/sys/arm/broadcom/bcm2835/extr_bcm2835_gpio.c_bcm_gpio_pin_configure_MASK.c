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
struct gpio_pin {unsigned int gp_flags; int /*<<< orphan*/  gp_pin; } ;
struct bcm_gpio_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_FSEL_GPIO_IN ; 
 int /*<<< orphan*/  BCM2835_FSEL_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_gpio_softc*) ; 
 int /*<<< orphan*/  BCM_GPIO_NONE ; 
 int /*<<< orphan*/  BCM_GPIO_PULLDOWN ; 
 int /*<<< orphan*/  BCM_GPIO_PULLUP ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_gpio_softc*) ; 
 unsigned int GPIO_PIN_INPUT ; 
 unsigned int GPIO_PIN_OUTPUT ; 
 unsigned int GPIO_PIN_PULLDOWN ; 
 unsigned int GPIO_PIN_PULLUP ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bcm_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{

	FUNC0(sc);

	/*
	 * Manage input/output.
	 */
	if (flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) {
		pin->gp_flags &= ~(GPIO_PIN_INPUT|GPIO_PIN_OUTPUT);
		if (flags & GPIO_PIN_OUTPUT) {
			pin->gp_flags |= GPIO_PIN_OUTPUT;
			FUNC2(sc, pin->gp_pin,
			    BCM2835_FSEL_GPIO_OUT);
		} else {
			pin->gp_flags |= GPIO_PIN_INPUT;
			FUNC2(sc, pin->gp_pin,
			    BCM2835_FSEL_GPIO_IN);
		}
	}

	/* Manage Pull-up/pull-down. */
	pin->gp_flags &= ~(GPIO_PIN_PULLUP|GPIO_PIN_PULLDOWN);
	if (flags & (GPIO_PIN_PULLUP|GPIO_PIN_PULLDOWN)) {
		if (flags & GPIO_PIN_PULLUP) {
			pin->gp_flags |= GPIO_PIN_PULLUP;
			FUNC3(sc, pin->gp_pin, BCM_GPIO_PULLUP);
		} else {
			pin->gp_flags |= GPIO_PIN_PULLDOWN;
			FUNC3(sc, pin->gp_pin, BCM_GPIO_PULLDOWN);
		}
	} else 
		FUNC3(sc, pin->gp_pin, BCM_GPIO_NONE);

	FUNC1(sc);
}