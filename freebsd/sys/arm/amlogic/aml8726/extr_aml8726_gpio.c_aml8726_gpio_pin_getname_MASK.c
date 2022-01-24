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
struct aml8726_gpio_softc {scalar_t__ npins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 struct aml8726_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin, char *name)
{
	struct aml8726_gpio_softc *sc = FUNC0(dev);

	if (pin >= sc->npins)
		return (EINVAL);

	FUNC2(name, GPIOMAXNAME, "%s.%u", FUNC1(dev), pin);

	return (0);
}