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
 int /*<<< orphan*/  FUNC0 (struct aml8726_gpio_softc*) ; 
 int /*<<< orphan*/  AML_GPIO_OE_N_REG ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_gpio_softc*) ; 
 unsigned int FUNC2 (struct aml8726_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 int EINVAL ; 
 unsigned int GPIO_PIN_OUTPUT ; 
 struct aml8726_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, uint32_t flags)
{
	struct aml8726_gpio_softc *sc = FUNC4(dev);
	uint32_t mask = 1U << pin;

	if (pin >= sc->npins)
		return (EINVAL);

	FUNC0(sc);

	if ((flags & GPIO_PIN_OUTPUT) != 0) {
		/* Output.  Turn on driver.  */
		FUNC3(sc, AML_GPIO_OE_N_REG,
		    (FUNC2(sc, AML_GPIO_OE_N_REG) & ~mask));
	} else {
		/* Input.  Turn off driver. */
		FUNC3(sc, AML_GPIO_OE_N_REG,
		    (FUNC2(sc, AML_GPIO_OE_N_REG) | mask));
	}
		
	FUNC1(sc);

	return (0);
}