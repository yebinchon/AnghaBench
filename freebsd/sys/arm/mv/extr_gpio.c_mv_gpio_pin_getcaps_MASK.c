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
struct mv_gpio_softc {size_t pin_num; TYPE_1__* gpio_setup; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {size_t gp_caps; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mv_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin, uint32_t *caps)
{
	struct mv_gpio_softc *sc = FUNC2(dev);
	if (caps == NULL)
		return (EINVAL);

	if (pin >= sc->pin_num)
		return (EINVAL);

	FUNC0();
	*caps = sc->gpio_setup[pin].gp_caps;
	FUNC1();

	return (0);
}