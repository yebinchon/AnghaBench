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
typedef  scalar_t__ uint32_t ;
struct a37x0_gpio_softc {scalar_t__ sc_npins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct a37x0_gpio_softc*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ GPIO_PIN_INPUT ; 
 scalar_t__ GPIO_PIN_OUTPUT ; 
 struct a37x0_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, uint32_t *flags)
{
	struct a37x0_gpio_softc *sc;
	uint32_t reg;

	sc = FUNC3(dev);
	if (pin >= sc->sc_npins)
		return (EINVAL);
	reg = FUNC2(sc, FUNC1(pin));
	if ((reg & FUNC0(pin)) != 0)
		*flags = GPIO_PIN_OUTPUT;
	else
		*flags = GPIO_PIN_INPUT;

	return (0);
}