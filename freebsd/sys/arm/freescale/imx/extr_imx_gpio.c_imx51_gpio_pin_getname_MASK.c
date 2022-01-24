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
struct imx51_gpio_softc {size_t gpio_npins; int /*<<< orphan*/  sc_mtx; TYPE_1__* gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  gp_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 struct imx51_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, char *name)
{
	struct imx51_gpio_softc *sc;

	sc = FUNC0(dev);
	if (pin >= sc->gpio_npins)
		return (EINVAL);

	FUNC2(&sc->sc_mtx);
	FUNC1(name, sc->gpio_pins[pin].gp_name, GPIOMAXNAME);
	FUNC3(&sc->sc_mtx);

	return (0);
}