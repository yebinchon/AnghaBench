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
struct aml8726_gpio_softc {int npins; int /*<<< orphan*/ * res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_gpio_softc*) ; 
 int /*<<< orphan*/  AML_GPIO_OUT_REG ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_gpio_softc*) ; 
 int FUNC2 (struct aml8726_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_gpio_softc*,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 struct aml8726_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin, unsigned int value)
{
	struct aml8726_gpio_softc *sc = FUNC4(dev);
	uint32_t mask;

	if (pin >= sc->npins || value > 1)
		return (EINVAL);

	/*
	 * The GPIOAO OUT bits occupy the upper word of the OEN register.
	 */
	if (FUNC5(sc->res[1]) == FUNC5(sc->res[0]))
		pin += 16;

	mask = 1U << pin;

	FUNC0(sc);

	FUNC3(sc, AML_GPIO_OUT_REG,
	    ((FUNC2(sc, AML_GPIO_OUT_REG) & ~mask) | (value << pin)));

	FUNC1(sc);

	return (0);
}