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
 int EINVAL ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 int /*<<< orphan*/  FUNC0 (struct rk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rk_gpio_softc*) ; 
 struct rk_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, char *name)
{
	struct rk_gpio_softc *sc;

	sc = FUNC2(dev);

	if (pin >= 32)
		return (EINVAL);

	FUNC0(sc);
	FUNC3(name, GPIOMAXNAME, "gpio%d", pin);
	FUNC1(sc);

	return (0);
}