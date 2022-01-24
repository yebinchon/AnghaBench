#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev_children; int /*<<< orphan*/  dev_module; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev, device_t child)
{
	int error = 0;
	device_t grandchild;

	/* detach parent before deleting children, if any */
	error = FUNC3(child);
	if (error)
		goto done;

	/* remove children second */
	while ((grandchild = FUNC0(&child->dev_children))) {
		error = FUNC6(child, grandchild);
		if (error) {
			FUNC4(dev, "Error deleting child!\n");
			goto done;
		}
	}

	FUNC2(child->dev_module, child);

	if (dev != NULL) {
		/* remove child from parent */
		FUNC1(&dev->dev_children, child, dev_link);
	}
	FUNC5(child, M_DEVBUF);

done:
	return (error);
}