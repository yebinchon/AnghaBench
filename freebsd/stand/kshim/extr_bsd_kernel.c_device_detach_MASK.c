#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct module_data {int dummy; } ;
typedef  TYPE_1__* device_t ;
struct TYPE_6__ {scalar_t__ dev_fixed_class; scalar_t__ dev_attached; struct module_data* dev_module; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_data const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC3(device_t dev)
{
	const struct module_data *mod = dev->dev_module;
	int error;

	if (dev->dev_attached) {

		error = FUNC0(dev);
		if (error) {
			return error;
		}
		dev->dev_attached = 0;
	}
	FUNC2(dev, NULL);

	if (dev->dev_fixed_class == 0)
		FUNC1(mod, dev);

	return (0);
}