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
struct imx51_gpio_softc {size_t gpio_npins; int /*<<< orphan*/ * gpio_pins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 struct imx51_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx51_gpio_softc*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC2(device_t dev, uint32_t pin, uint32_t flags)
{
	struct imx51_gpio_softc *sc;

	sc = FUNC0(dev);

	if (pin >= sc->gpio_npins)
		return (EINVAL);

	FUNC1(sc, &sc->gpio_pins[pin], flags);

	return (0);
}