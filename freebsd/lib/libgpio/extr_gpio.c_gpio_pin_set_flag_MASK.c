#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  gpio_pin_t ;
typedef  int /*<<< orphan*/  gpio_handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  g_flags; int /*<<< orphan*/  g_pin; } ;
typedef  TYPE_1__ gpio_config_t ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(gpio_handle_t handle, gpio_pin_t pin, uint32_t flag)
{
	gpio_config_t cfg;

	FUNC0(&cfg, sizeof(cfg));
	cfg.g_pin = pin;
	if (FUNC1(handle, &cfg) < 0)
		return (-1);
	cfg.g_flags = flag;

	return (FUNC2(handle, &cfg));
}