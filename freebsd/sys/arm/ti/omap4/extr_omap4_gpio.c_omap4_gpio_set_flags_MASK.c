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
typedef  int uint32_t ;
struct ti_gpio_softc {int sc_bank; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 int GPIO_PIN_PULLDOWN ; 
 int GPIO_PIN_PULLUP ; 
 unsigned int PADCONF_PIN_INPUT ; 
 unsigned int PADCONF_PIN_INPUT_PULLDOWN ; 
 unsigned int PADCONF_PIN_INPUT_PULLUP ; 
 unsigned int PADCONF_PIN_OUTPUT ; 
 struct ti_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,unsigned int) ; 

__attribute__((used)) static int
FUNC2(device_t dev, uint32_t gpio, uint32_t flags)
{
	unsigned int state = 0;
	struct ti_gpio_softc *sc;

	sc = FUNC0(dev);
	/* First the SCM driver needs to be told to put the pad into GPIO mode */
	if (flags & GPIO_PIN_OUTPUT)
		state = PADCONF_PIN_OUTPUT;
	else if (flags & GPIO_PIN_INPUT) {
		if (flags & GPIO_PIN_PULLUP)
			state = PADCONF_PIN_INPUT_PULLUP;
		else if (flags & GPIO_PIN_PULLDOWN)
			state = PADCONF_PIN_INPUT_PULLDOWN;
		else
			state = PADCONF_PIN_INPUT;
	}
	return FUNC1((sc->sc_bank-1)*32 + gpio, state);
}