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
typedef  int /*<<< orphan*/ * vm_object_t ;
struct vmspace {int /*<<< orphan*/  vm_map; } ;
struct sglist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  OBJT_SG ; 
 int /*<<< orphan*/  VMFS_NO_SPACE ; 
 int /*<<< orphan*/  VM_MEMATTR_UNCACHEABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VM_PROT_RW ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct sglist* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sglist*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sglist*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,struct sglist*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

vm_object_t
FUNC11(struct vmspace *vmspace, vm_paddr_t gpa, size_t len,
	       vm_paddr_t hpa)
{
	int error;
	vm_object_t obj;
	struct sglist *sg;

	sg = FUNC4(1, M_WAITOK);
	error = FUNC5(sg, hpa, len);
	FUNC0(error == 0, ("error %d appending physaddr to sglist", error));

	obj = FUNC10(OBJT_SG, sg, len, VM_PROT_RW, 0, NULL);
	if (obj != NULL) {
		/*
		 * VT-x ignores the MTRR settings when figuring out the
		 * memory type for translations obtained through EPT.
		 *
		 * Therefore we explicitly force the pages provided by
		 * this object to be mapped as uncacheable.
		 */
		FUNC1(obj);
		error = FUNC9(obj, VM_MEMATTR_UNCACHEABLE);
		FUNC2(obj);
		if (error != KERN_SUCCESS) {
			FUNC3("vmm_mmio_alloc: vm_object_set_memattr error %d",
				error);
		}
		error = FUNC7(&vmspace->vm_map, obj, 0, &gpa, len, 0,
				    VMFS_NO_SPACE, VM_PROT_RW, VM_PROT_RW, 0);
		if (error != KERN_SUCCESS) {
			FUNC8(obj);
			obj = NULL;
		}
	}

	/*
	 * Drop the reference on the sglist.
	 *
	 * If the scatter/gather object was successfully allocated then it
	 * has incremented the reference count on the sglist. Dropping the
	 * initial reference count ensures that the sglist will be freed
	 * when the object is deallocated.
	 * 
	 * If the object could not be allocated then we end up freeing the
	 * sglist.
	 */
	FUNC6(sg);

	return (obj);
}