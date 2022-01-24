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
typedef  int /*<<< orphan*/  uint32_t ;
struct ti_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_gpio_softc*) ; 
 struct ti_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ti_gpio_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, uint32_t *flags)
{
	struct ti_gpio_softc *sc;

	sc = FUNC3(dev);
	if (FUNC4(sc, pin) != 0)
		return (EINVAL);

	/* Get the current pin state */
	FUNC1(sc);
	FUNC0(dev, pin, flags);
	FUNC2(sc);

	return (0);
}