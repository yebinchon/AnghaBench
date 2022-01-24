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
struct vm {int dummy; } ;
struct pptdev {int /*<<< orphan*/  dev; struct vm* vm; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pptdev* FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vm*) ; 

int
FUNC7(struct vm *vm, int bus, int slot, int func)
{
	struct pptdev *ppt;

	ppt = FUNC4(bus, slot, func);
	if (ppt != NULL) {
		/*
		 * If this device is owned by a different VM then we
		 * cannot change its owner.
		 */
		if (ppt->vm != NULL && ppt->vm != vm)
			return (EBUSY);

		FUNC3(ppt->dev);
		FUNC5(ppt->dev);
		FUNC2(ppt->dev);
		ppt->vm = vm;
		FUNC0(FUNC6(vm), FUNC1(ppt->dev));
		return (0);
	}
	return (ENOENT);
}