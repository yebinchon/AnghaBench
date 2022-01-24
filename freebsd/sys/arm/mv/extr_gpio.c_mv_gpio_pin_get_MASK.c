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
typedef  scalar_t__ uint32_t ;
struct mv_gpio_softc {scalar_t__ pin_num; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mv_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, unsigned int *value)
{
	struct mv_gpio_softc *sc = FUNC2(dev);
	if (value == NULL)
		return (EINVAL);

	if (pin >= sc->pin_num)
		return (EINVAL);

	FUNC0();
	*value = FUNC3(dev, pin);
	FUNC1();

	return (0);
}