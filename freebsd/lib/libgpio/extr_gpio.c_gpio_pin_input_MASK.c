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
typedef  int /*<<< orphan*/  gpio_pin_t ;
typedef  int /*<<< orphan*/  gpio_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PIN_INPUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(gpio_handle_t handle, gpio_pin_t pin)
{
	return (FUNC0(handle, pin, GPIO_PIN_INPUT));
}