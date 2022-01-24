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
struct ti_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int GPIOMAXNAME ; 
 struct ti_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 scalar_t__ FUNC2 (struct ti_gpio_softc*,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin, char *name)
{
	struct ti_gpio_softc *sc;

	sc = FUNC0(dev);
	if (FUNC2(sc, pin) != 0)
		return (EINVAL);

	/* Set a very simple name */
	FUNC1(name, GPIOMAXNAME, "gpio_%u", pin);
	name[GPIOMAXNAME - 1] = '\0';

	return (0);
}