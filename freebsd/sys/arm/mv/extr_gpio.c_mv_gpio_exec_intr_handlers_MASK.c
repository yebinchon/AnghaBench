#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mv_gpio_softc {TYPE_1__* gpio_setup; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_flags; } ;

/* Variables and functions */
 int GPIO_PINS_PER_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int MV_GPIO_IN_DEBOUNCE ; 
 int MV_GPIO_IN_IRQ_DOUBLE_EDGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(device_t dev, uint32_t status, int high)
{
	int i, pin;
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC1(dev);

	FUNC0();

	i = 0;
	while (status != 0) {
		if (status & 1) {
			pin = (high ? (i + GPIO_PINS_PER_REG) : i);
			if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_DEBOUNCE)
				FUNC2(dev, pin);
			else if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_IRQ_DOUBLE_EDGE) {
				FUNC4(dev, pin, 0, 1);
				FUNC3(dev, pin);
			} else
				FUNC3(dev, pin);
		}
		status >>= 1;
		i++;
	}
}