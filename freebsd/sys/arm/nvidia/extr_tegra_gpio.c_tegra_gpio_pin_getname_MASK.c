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
typedef  size_t uint32_t ;
struct tegra_gpio_softc {size_t gpio_npins; TYPE_1__* gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  gp_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_gpio_softc*) ; 
 struct tegra_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, char *name)
{
	struct tegra_gpio_softc *sc;

	sc = FUNC2(dev);
	if (pin >= sc->gpio_npins)
		return (EINVAL);

	FUNC0(sc);
	FUNC3(name, sc->gpio_pins[pin].gp_name, GPIOMAXNAME);
	FUNC1(sc);

	return (0);
}