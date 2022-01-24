#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_operations_struct {int /*<<< orphan*/  (* close ) (struct vm_area_struct*) ;} ;
struct vm_area_struct {TYPE_1__* vm_mm; struct vm_operations_struct* vm_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct vm_area_struct* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *handle)
{
	const struct vm_operations_struct *vm_ops;
	struct vm_area_struct *vmap;

	vmap = FUNC3(handle);
	FUNC0(vmap != NULL);

	/*
	 * Remove handle before calling close operation to prevent
	 * other threads from reusing the handle pointer.
	 */
	FUNC5(vmap);

	FUNC1(&vmap->vm_mm->mmap_sem);
	vm_ops = vmap->vm_ops;
	if (FUNC2(vm_ops != NULL))
		vm_ops->close(vmap);
	FUNC7(&vmap->vm_mm->mmap_sem);

	FUNC4(vmap);
}