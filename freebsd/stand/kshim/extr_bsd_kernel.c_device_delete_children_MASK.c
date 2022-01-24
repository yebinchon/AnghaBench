#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
struct TYPE_7__ {int /*<<< orphan*/  dev_children; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

int
FUNC3(device_t dev)
{
	device_t child;
	int error = 0;

	while ((child = FUNC0(&dev->dev_children))) {
		error = FUNC1(dev, child);
		if (error) {
			FUNC2(dev, "Error deleting child!\n");
			break;
		}
	}
	return (error);
}