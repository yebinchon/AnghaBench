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
struct ti_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int TI_GPIO_DATAIN ; 
 int TI_GPIO_DATAOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ti_gpio_softc*) ; 
 int FUNC1 (int) ; 
 int TI_GPIO_OE ; 
 int /*<<< orphan*/  FUNC2 (struct ti_gpio_softc*) ; 
 struct ti_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ti_gpio_softc*,int) ; 
 scalar_t__ FUNC5 (struct ti_gpio_softc*,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint32_t pin, unsigned int *value)
{
	struct ti_gpio_softc *sc;
	uint32_t oe, reg, val;

	sc = FUNC3(dev);
	if (FUNC5(sc, pin) != 0)
		return (EINVAL);

	/*
	 * Return data from output latch when set as output and from the 
	 * input register otherwise.
	 */
	FUNC0(sc);
	oe = FUNC4(sc, TI_GPIO_OE);
	if (oe & FUNC1(pin))
		reg = TI_GPIO_DATAIN;
	else
		reg = TI_GPIO_DATAOUT;
	val = FUNC4(sc, reg);
	*value = (val & FUNC1(pin)) ? 1 : 0;
	FUNC2(sc);

	return (0);
}