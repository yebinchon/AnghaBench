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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct mv_gpio_softc {scalar_t__ pin_num; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ GPIO_DATA_IN ; 
 scalar_t__ GPIO_DATA_IN_POLAR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static uint32_t
FUNC3(device_t dev, uint32_t pin, uint8_t exclude_polar)
{
	uint32_t reg, polar_reg, reg_val, polar_reg_val;
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC1(dev);

	if (pin >= sc->pin_num)
		return (0);

	reg = GPIO_DATA_IN;
	polar_reg = GPIO_DATA_IN_POLAR;

	reg_val = FUNC2(dev, reg);

	if (exclude_polar) {
		polar_reg_val = FUNC2(dev, polar_reg);
		return ((reg_val & FUNC0(pin)) ^ (polar_reg_val & FUNC0(pin)));
	} else
		return (reg_val & FUNC0(pin));
}