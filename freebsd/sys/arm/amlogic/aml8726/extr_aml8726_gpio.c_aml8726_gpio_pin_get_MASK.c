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
typedef  unsigned int uint32_t ;
struct aml8726_gpio_softc {unsigned int npins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AML_GPIO_IN_REG ; 
 unsigned int FUNC0 (struct aml8726_gpio_softc*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 struct aml8726_gpio_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, uint32_t pin, unsigned int *value)
{
	struct aml8726_gpio_softc *sc = FUNC1(dev);
	uint32_t mask = 1U << pin;

	if (pin >= sc->npins)
		return (EINVAL);

	*value = (FUNC0(sc, AML_GPIO_IN_REG) & mask) ? 1 : 0;

	return (0);
}