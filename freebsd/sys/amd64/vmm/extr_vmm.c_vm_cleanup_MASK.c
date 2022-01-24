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
struct vm {int maxcpus; int /*<<< orphan*/ * vmspace; struct mem_map* mem_maps; int /*<<< orphan*/  cookie; int /*<<< orphan*/  vioapic; int /*<<< orphan*/  vatpic; int /*<<< orphan*/  vhpet; int /*<<< orphan*/  vatpit; int /*<<< orphan*/  vpmtmr; int /*<<< orphan*/  vrtc; int /*<<< orphan*/ * iommu; } ;
struct mem_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int VM_MAX_MEMMAPS ; 
 int VM_MAX_MEMSEGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vm*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm*,struct mem_map*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vm*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vm*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct vm *vm, bool destroy)
{
	struct mem_map *mm;
	int i;

	FUNC3(vm);

	if (vm->iommu != NULL)
		FUNC2(vm->iommu);

	if (destroy)
		FUNC13(vm->vrtc);
	else
		FUNC14(vm->vrtc);
	FUNC12(vm->vpmtmr);
	FUNC6(vm->vatpit);
	FUNC8(vm->vhpet);
	FUNC5(vm->vatpic);
	FUNC9(vm->vioapic);

	for (i = 0; i < vm->maxcpus; i++)
		FUNC7(vm, i, destroy);

	FUNC0(vm->cookie);

	/*
	 * System memory is removed from the guest address space only when
	 * the VM is destroyed. This is because the mapping remains the same
	 * across VM reset.
	 *
	 * Device memory can be relocated by the guest (e.g. using PCI BARs)
	 * so those mappings are removed on a VM reset.
	 */
	for (i = 0; i < VM_MAX_MEMMAPS; i++) {
		mm = &vm->mem_maps[i];
		if (destroy || !FUNC4(vm, mm))
			FUNC10(vm, i);
	}

	if (destroy) {
		for (i = 0; i < VM_MAX_MEMSEGS; i++)
			FUNC11(vm, i);

		FUNC1(vm->vmspace);
		vm->vmspace = NULL;
	}
}