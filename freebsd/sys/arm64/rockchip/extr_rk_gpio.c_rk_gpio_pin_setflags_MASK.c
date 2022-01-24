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
struct rk_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int GPIO_PIN_INPUT ; 
 int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct rk_gpio_softc*) ; 
 int FUNC1 (struct rk_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RK_GPIO_SWPORTA_DDR ; 
 int /*<<< orphan*/  FUNC2 (struct rk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rk_gpio_softc*,int /*<<< orphan*/ ,int) ; 
 struct rk_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, uint32_t flags)
{
	struct rk_gpio_softc *sc;
	uint32_t reg;

	sc = FUNC4(dev);

	/* XXX Combine this with parent (pinctrl) */
	FUNC0(sc);

	reg = FUNC1(sc, RK_GPIO_SWPORTA_DDR);
	if (flags & GPIO_PIN_INPUT)
		reg &= ~(1 << pin);
	else if (flags & GPIO_PIN_OUTPUT)
		reg |= (1 << pin);

	FUNC3(sc, RK_GPIO_SWPORTA_DDR, reg);
	FUNC2(sc);

	return (0);
}