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
struct zy7_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 int GPIO_PIN_TRISTATE ; 
 int FUNC0 (struct zy7_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct zy7_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct zy7_gpio_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint32_t pin, uint32_t *flags)
{
	struct zy7_gpio_softc *sc = FUNC6(dev);

	if (!FUNC1(pin))
		return (EINVAL);

	FUNC2(sc);

	if ((FUNC0(sc, FUNC4(pin >> 5)) & (1 << (pin & 31))) != 0) {
		/* output */
		if ((FUNC0(sc, FUNC5(pin >> 5)) & (1 << (pin & 31))) == 0)
			*flags = (GPIO_PIN_OUTPUT | GPIO_PIN_TRISTATE);
		else
			*flags = GPIO_PIN_OUTPUT;
	} else
		/* input */
		*flags = GPIO_PIN_INPUT;

	FUNC3(sc);

	return (0);
}