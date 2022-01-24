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
struct tegra_gpio_softc {int dummy; } ;
struct gpio_pin {unsigned int gp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MSK_OE ; 
 unsigned int GPIO_PIN_INPUT ; 
 unsigned int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_gpio_softc*,int /*<<< orphan*/ ,struct gpio_pin*,int) ; 

__attribute__((used)) static void
FUNC1(struct tegra_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{

	if ((flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) == 0)
		return;

	/* Manage input/output */
	pin->gp_flags &= ~(GPIO_PIN_INPUT | GPIO_PIN_OUTPUT);
	if (flags & GPIO_PIN_OUTPUT) {
		pin->gp_flags |= GPIO_PIN_OUTPUT;
		FUNC0(sc, GPIO_MSK_OE, pin, 1);
	} else {
		pin->gp_flags |= GPIO_PIN_INPUT;
		FUNC0(sc, GPIO_MSK_OE, pin, 0);
	}
}