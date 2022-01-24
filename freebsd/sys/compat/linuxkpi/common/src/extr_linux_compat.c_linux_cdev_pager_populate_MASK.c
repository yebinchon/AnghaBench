#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_3__* vm_object_t ;
struct vm_fault {struct vm_area_struct* vma; int /*<<< orphan*/ * page; scalar_t__ pgoff; int /*<<< orphan*/  flags; void* virtual_address; } ;
struct vm_area_struct {scalar_t__ vm_private_data; scalar_t__ vm_pfn_count; scalar_t__* vm_pfn_pcount; scalar_t__ vm_pfn_first; TYPE_2__* vm_mm; TYPE_1__* vm_ops; TYPE_3__* vm_obj; } ;
struct TYPE_9__ {scalar_t__ handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_7__ {int (* fault ) (struct vm_area_struct*,struct vm_fault*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FAULT_FLAG_WRITE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PRI_USER ; 
#define  VM_FAULT_NOPAGE 130 
#define  VM_FAULT_OOM 129 
#define  VM_FAULT_SIGBUS 128 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int VM_PAGER_AGAIN ; 
 int VM_PAGER_BAD ; 
 int VM_PAGER_ERROR ; 
 int VM_PAGER_OK ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct vm_area_struct* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct vm_area_struct*,struct vm_fault*) ; 
 int FUNC9 (struct vm_area_struct*,struct vm_fault*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(vm_object_t vm_obj, vm_pindex_t pidx, int fault_type,
    vm_prot_t max_prot, vm_pindex_t *first, vm_pindex_t *last)
{
	struct vm_area_struct *vmap;
	int err;

	FUNC7(curthread);

	/* get VM area structure */
	vmap = FUNC6(vm_obj->handle);
	FUNC1(vmap != NULL);
	FUNC1(vmap->vm_private_data == vm_obj->handle);

	FUNC3(vm_obj);

	FUNC4(&vmap->vm_mm->mmap_sem);
	if (FUNC10(vmap->vm_ops == NULL)) {
		err = VM_FAULT_SIGBUS;
	} else {
		struct vm_fault vmf;

		/* fill out VM fault structure */
		vmf.virtual_address = (void *)(uintptr_t)FUNC0(pidx);
		vmf.flags = (fault_type & VM_PROT_WRITE) ? FAULT_FLAG_WRITE : 0;
		vmf.pgoff = 0;
		vmf.page = NULL;
		vmf.vma = vmap;

		vmap->vm_pfn_count = 0;
		vmap->vm_pfn_pcount = &vmap->vm_pfn_count;
		vmap->vm_obj = vm_obj;

		err = vmap->vm_ops->fault(vmap, &vmf);

		while (vmap->vm_pfn_count == 0 && err == VM_FAULT_NOPAGE) {
			FUNC5(PRI_USER);
			err = vmap->vm_ops->fault(vmap, &vmf);
		}
	}

	/* translate return code */
	switch (err) {
	case VM_FAULT_OOM:
		err = VM_PAGER_AGAIN;
		break;
	case VM_FAULT_SIGBUS:
		err = VM_PAGER_BAD;
		break;
	case VM_FAULT_NOPAGE:
		/*
		 * By contract the fault handler will return having
		 * busied all the pages itself. If pidx is already
		 * found in the object, it will simply xbusy the first
		 * page and return with vm_pfn_count set to 1.
		 */
		*first = vmap->vm_pfn_first;
		*last = *first + vmap->vm_pfn_count - 1;
		err = VM_PAGER_OK;
		break;
	default:
		err = VM_PAGER_ERROR;
		break;
	}
	FUNC11(&vmap->vm_mm->mmap_sem);
	FUNC2(vm_obj);
	return (err);
}