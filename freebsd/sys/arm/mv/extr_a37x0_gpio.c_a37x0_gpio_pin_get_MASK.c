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
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct a37x0_gpio_softc*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 struct a37x0_gpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin, unsigned int *val)
{
	struct a37x0_gpio_softc *sc;
	uint32_t reg;

	sc = FUNC5(dev);
	if (pin >= sc->sc_npins)
		return (EINVAL);

	reg = FUNC4(sc, FUNC3(pin));
	if ((reg & FUNC0(pin)) != 0)
		reg = FUNC4(sc, FUNC2(pin));
	else
		reg = FUNC4(sc, FUNC1(pin));
	*val = ((reg & FUNC0(pin)) != 0) ? 1 : 0;

	return (0);
}