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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  gpio_prop ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  delay_prop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int GPIO_ACTIVE_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int*,int*) ; 
 int GPIO_PIN_HIGH ; 
 int GPIO_PIN_LOW ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	pcell_t gpio_prop[4], delay_prop[3];
	phandle_t node, gpio_node;
	device_t gpio;
	uint32_t pin, flags;
	uint32_t pin_value;

	node = FUNC9(dev);
	if (FUNC5(node, "allwinner,reset-gpio", gpio_prop,
	    sizeof(gpio_prop)) <= 0)
		return (0);

	if (FUNC5(node, "allwinner,reset-delays-us", delay_prop,
	    sizeof(delay_prop)) <= 0)
		return (ENXIO);

	gpio_node = FUNC7(gpio_prop[0]);
	if ((gpio = FUNC4(gpio_prop[0])) == NULL)
		return (ENXIO);

	if (FUNC1(gpio, node, gpio_node, FUNC8(gpio_prop) - 1,
	    gpio_prop + 1, &pin, &flags) != 0)
		return (ENXIO);

	pin_value = GPIO_PIN_LOW;
	if (FUNC6(node, "allwinner,reset-active-low"))
		pin_value = GPIO_PIN_HIGH;

	if (flags & GPIO_ACTIVE_LOW)
		pin_value = !pin_value;

	FUNC3(gpio, pin, GPIO_PIN_OUTPUT);
	FUNC2(gpio, pin, pin_value);
	FUNC0(delay_prop[0]);
	FUNC2(gpio, pin, !pin_value);
	FUNC0(delay_prop[1]);
	FUNC2(gpio, pin, pin_value);
	FUNC0(delay_prop[2]);

	return (0);
}