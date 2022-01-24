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
typedef  int /*<<< orphan*/  gpio_handle_t ;
struct TYPE_5__ {int g_pin; } ;
typedef  TYPE_1__ gpio_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  GPIOMAXPIN ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int
FUNC3(gpio_handle_t handle, gpio_config_t **pcfgs)
{
	int maxpins, i;
	gpio_config_t *cfgs;

	*pcfgs = NULL;
	if (FUNC2(handle, GPIOMAXPIN, &maxpins) < 0)
		return (-1);
	/* Reasonable values. */
	if (maxpins < 0 || maxpins > 4096) {
		errno = EINVAL;
		return (-1);
	}
	cfgs = FUNC0(maxpins + 1, sizeof(*cfgs));
	if (cfgs == NULL)
		return (-1);
	for (i = 0; i <= maxpins; i++) {
		cfgs[i].g_pin = i;
		FUNC1(handle, &cfgs[i]);
	}
	*pcfgs = cfgs;

	return (maxpins);
}