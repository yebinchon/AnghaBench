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
typedef  size_t uint32_t ;
struct tegra_gpio_softc {size_t gpio_npins; int /*<<< orphan*/ * gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_IN ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_gpio_softc*) ; 
 struct tegra_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct tegra_gpio_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, unsigned int *val)
{
	struct tegra_gpio_softc *sc;

	sc = FUNC2(dev);
	if (pin >= sc->gpio_npins)
		return (EINVAL);

	FUNC0(sc);
	*val = FUNC3(sc, GPIO_IN, &sc->gpio_pins[pin]);
	FUNC1(sc);

	return (0);
}