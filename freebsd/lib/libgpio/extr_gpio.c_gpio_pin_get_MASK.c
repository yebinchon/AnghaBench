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
struct gpio_req {int /*<<< orphan*/  gp_value; int /*<<< orphan*/  gp_pin; } ;
typedef  int /*<<< orphan*/  gpreq ;
typedef  int /*<<< orphan*/  gpio_value_t ;
typedef  int /*<<< orphan*/  gpio_pin_t ;
typedef  int /*<<< orphan*/  gpio_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOGET ; 
 int /*<<< orphan*/  GPIO_VALUE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_req*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gpio_req*) ; 

gpio_value_t
FUNC2(gpio_handle_t handle, gpio_pin_t pin)
{
	struct gpio_req gpreq;

	FUNC0(&gpreq, sizeof(gpreq));
	gpreq.gp_pin = pin;
	if (FUNC1(handle, GPIOGET, &gpreq) < 0)
		return (GPIO_VALUE_INVALID);

	return (gpreq.gp_value);
}