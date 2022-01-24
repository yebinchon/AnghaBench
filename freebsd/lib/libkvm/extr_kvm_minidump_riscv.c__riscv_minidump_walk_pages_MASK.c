#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  scalar_t__ u_long ;
struct TYPE_6__ {int pmapsize; scalar_t__ kernbase; scalar_t__ dmapbase; scalar_t__ dmapend; int /*<<< orphan*/  bitmapsize; } ;
struct vmstate {TYPE_1__ hdr; } ;
struct kvm_bitmap {int dummy; } ;
typedef  scalar_t__ riscv_pt_entry_t ;
typedef  int /*<<< orphan*/  kvm_walk_pages_cb_t ;
struct TYPE_7__ {struct vmstate* vmst; } ;
typedef  TYPE_2__ kvm_t ;

/* Variables and functions */
 scalar_t__ RISCV_L3_SHIFT ; 
 scalar_t__ RISCV_PAGE_SIZE ; 
 scalar_t__ RISCV_PTE_PPN0_S ; 
 scalar_t__ RISCV_PTE_RWX ; 
 scalar_t__ RISCV_PTE_V ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_bitmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_bitmap*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct kvm_bitmap*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,void*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(kvm_t *kd, kvm_walk_pages_cb_t *cb, void *arg)
{
	struct vmstate *vm = kd->vmst;
	u_long nptes = vm->hdr.pmapsize / sizeof(riscv_pt_entry_t);
	u_long bmindex, dva, pa, pteindex, va;
	struct kvm_bitmap bm;
	vm_prot_t prot;
	int ret = 0;

	if (!FUNC1(&bm, vm->hdr.bitmapsize, &bmindex))
		return (0);

	for (pteindex = 0; pteindex < nptes; pteindex++) {
		riscv_pt_entry_t pte = FUNC5(kd, pteindex);

		if (((pte & RISCV_PTE_V) == 0) ||
		    ((pte & RISCV_PTE_RWX) == 0))
			continue;

		va = vm->hdr.kernbase + (pteindex << RISCV_L3_SHIFT);
		pa = (pte >> RISCV_PTE_PPN0_S) << RISCV_L3_SHIFT;
		dva = vm->hdr.dmapbase + pa;
		if (!FUNC3(kd, cb, arg, pa, va, dva,
		    FUNC4(pte), RISCV_PAGE_SIZE, 0)) {
			goto out;
		}
	}

	while (FUNC2(&bm, &bmindex)) {
		pa = bmindex * RISCV_PAGE_SIZE;
		dva = vm->hdr.dmapbase + pa;
		if (vm->hdr.dmapend < (dva + RISCV_PAGE_SIZE))
			break;
		va = 0;
		prot = VM_PROT_READ | VM_PROT_WRITE;
		if (!FUNC3(kd, cb, arg, pa, va, dva,
		    prot, RISCV_PAGE_SIZE, 0)) {
			goto out;
		}
	}
	ret = 1;

out:
	FUNC0(&bm);
	return (ret);
}