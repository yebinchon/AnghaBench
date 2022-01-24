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
typedef  int /*<<< orphan*/  vm_paddr_t ;
struct vm {int /*<<< orphan*/ * iommu; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vm*,int,int,int) ; 
 scalar_t__ FUNC3 (struct vm*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm*) ; 

int
FUNC6(struct vm *vm, int bus, int slot, int func)
{
	int error;
	vm_paddr_t maxaddr;

	/* Set up the IOMMU to do the 'gpa' to 'hpa' translation */
	if (FUNC3(vm) == 0) {
		FUNC0(vm->iommu == NULL,
		    ("vm_assign_pptdev: iommu must be NULL"));
		maxaddr = FUNC5(vm);
		vm->iommu = FUNC1(maxaddr);
		if (vm->iommu == NULL)
			return (ENXIO);
		FUNC4(vm);
	}

	error = FUNC2(vm, bus, slot, func);
	return (error);
}