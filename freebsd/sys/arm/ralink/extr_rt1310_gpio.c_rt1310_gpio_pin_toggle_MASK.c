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
struct rt1310_gpio_pinmap {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct rt1310_gpio_pinmap* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin)
{
	const struct rt1310_gpio_pinmap *map;
	uint32_t flags;

	map = FUNC1(pin);

	if (FUNC2(dev, pin, &flags))
		return (ENXIO);

	if ((flags & GPIO_PIN_OUTPUT) == 0)
		return (EINVAL);
	
	FUNC0("not implemented yet");

	return (0);

}