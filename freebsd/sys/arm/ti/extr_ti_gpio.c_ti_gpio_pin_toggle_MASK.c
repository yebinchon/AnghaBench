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
 int TI_GPIO_CLEARDATAOUT ; 
 int /*<<< orphan*/  TI_GPIO_DATAOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ti_gpio_softc*) ; 
 int FUNC1 (int) ; 
 int TI_GPIO_SETDATAOUT ; 
 int /*<<< orphan*/  FUNC2 (struct ti_gpio_softc*) ; 
 struct ti_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ti_gpio_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ti_gpio_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_gpio_softc*,int,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint32_t pin)
{
	struct ti_gpio_softc *sc;
	uint32_t reg, val;

	sc = FUNC3(dev);
	if (FUNC5(sc, pin) != 0)
		return (EINVAL);

	/* Toggle the pin */
	FUNC0(sc);
	val = FUNC4(sc, TI_GPIO_DATAOUT);
	if (val & FUNC1(pin))
		reg = TI_GPIO_CLEARDATAOUT;
	else
		reg = TI_GPIO_SETDATAOUT;
	FUNC6(sc, reg, FUNC1(pin));
	FUNC2(sc);

	return (0);
}