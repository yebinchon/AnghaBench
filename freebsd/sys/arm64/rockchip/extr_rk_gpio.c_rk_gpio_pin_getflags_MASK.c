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
 struct rk_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, uint32_t *flags)
{
	struct rk_gpio_softc *sc;
	uint32_t reg;

	sc = FUNC3(dev);

	/* XXX Combine this with parent (pinctrl) */
	FUNC0(sc);
	reg = FUNC1(sc, RK_GPIO_SWPORTA_DDR);
	FUNC2(sc);

	if (reg & (1 << pin))
		*flags = GPIO_PIN_OUTPUT;
	else
		*flags = GPIO_PIN_INPUT;

	return (0);
}