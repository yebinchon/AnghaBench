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
typedef  scalar_t__ vm_paddr_t ;
struct vm {void* iommu; struct mem_map* mem_maps; } ;
struct mem_map {int flags; scalar_t__ gpa; scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PAGE_SIZE ; 
 int VM_MAX_MEMMAPS ; 
 int VM_MEMMAP_F_IOMMU ; 
 int VM_MEMMAP_F_WIRED ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,scalar_t__,int) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vm*,struct mem_map*) ; 
 void* FUNC7 (struct vm*,int,scalar_t__,int,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct vm*) ; 

__attribute__((used)) static void
FUNC10(struct vm *vm, bool map)
{
	int i, sz;
	vm_paddr_t gpa, hpa;
	struct mem_map *mm;
	void *vp, *cookie, *host_domain;

	sz = PAGE_SIZE;
	host_domain = FUNC3();

	for (i = 0; i < VM_MAX_MEMMAPS; i++) {
		mm = &vm->mem_maps[i];
		if (!FUNC6(vm, mm))
			continue;

		if (map) {
			FUNC1((mm->flags & VM_MEMMAP_F_IOMMU) == 0,
			    ("iommu map found invalid memmap %#lx/%#lx/%#x",
			    mm->gpa, mm->len, mm->flags));
			if ((mm->flags & VM_MEMMAP_F_WIRED) == 0)
				continue;
			mm->flags |= VM_MEMMAP_F_IOMMU;
		} else {
			if ((mm->flags & VM_MEMMAP_F_IOMMU) == 0)
				continue;
			mm->flags &= ~VM_MEMMAP_F_IOMMU;
			FUNC1((mm->flags & VM_MEMMAP_F_WIRED) != 0,
			    ("iommu unmap found invalid memmap %#lx/%#lx/%#x",
			    mm->gpa, mm->len, mm->flags));
		}

		gpa = mm->gpa;
		while (gpa < mm->gpa + mm->len) {
			vp = FUNC7(vm, -1, gpa, PAGE_SIZE, VM_PROT_WRITE,
					 &cookie);
			FUNC1(vp != NULL, ("vm(%s) could not map gpa %#lx",
			    FUNC9(vm), gpa));

			FUNC8(cookie);

			hpa = FUNC0((uintptr_t)vp);
			if (map) {
				FUNC2(vm->iommu, gpa, hpa, sz);
				FUNC5(host_domain, hpa, sz);
			} else {
				FUNC5(vm->iommu, gpa, sz);
				FUNC2(host_domain, hpa, hpa, sz);
			}

			gpa += PAGE_SIZE;
		}
	}

	/*
	 * Invalidate the cached translations associated with the domain
	 * from which pages were removed.
	 */
	if (map)
		FUNC4(host_domain);
	else
		FUNC4(vm->iommu);
}