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
struct gpio_pin {int /*<<< orphan*/  gp_name; int /*<<< orphan*/  gp_pin; } ;
typedef  int /*<<< orphan*/  gppin ;
typedef  int /*<<< orphan*/  gpio_pin_t ;
typedef  int /*<<< orphan*/  gpio_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOMAXNAME ; 
 int /*<<< orphan*/  GPIOSETNAME ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_pin*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gpio_pin*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC3(gpio_handle_t handle, gpio_pin_t pin, char *name)
{
	struct gpio_pin gppin;

	if (name == NULL)
		return (-1);
	FUNC0(&gppin, sizeof(gppin));
	gppin.gp_pin = pin;
	FUNC2(gppin.gp_name, name, GPIOMAXNAME);
	if (FUNC1(handle, GPIOSETNAME, &gppin) < 0)
		return (-1);

	return (0);
}