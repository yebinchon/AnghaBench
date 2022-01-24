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
 scalar_t__ GPIO_DATA_OUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(device_t dev, uint32_t pin, uint8_t val)
{
	uint32_t reg;
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC1(dev);

	FUNC0();

	if (pin >= sc->pin_num)
		return;

	reg = GPIO_DATA_OUT;

	if (val)
		FUNC3(dev, reg, pin);
	else
		FUNC2(dev, reg, pin);
}