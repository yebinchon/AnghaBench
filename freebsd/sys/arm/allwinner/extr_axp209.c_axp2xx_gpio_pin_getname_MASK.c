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
typedef  scalar_t__ uint32_t ;
struct axp2xx_softc {scalar_t__ npins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 TYPE_1__* axp209_pins ; 
 struct axp2xx_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC2(device_t dev, uint32_t pin, char *name)
{
	struct axp2xx_softc *sc;

	sc = FUNC0(dev);

	if (pin >= sc->npins)
		return (EINVAL);

	FUNC1(name, GPIOMAXNAME, "%s", axp209_pins[pin].name);

	return (0);
}