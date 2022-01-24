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
typedef  int /*<<< orphan*/  kvm_walk_pages_cb_t ;
struct TYPE_7__ {struct vmstate* vmst; } ;
typedef  TYPE_2__ kvm_t ;
typedef  scalar_t__ aarch64_pte_t ;

/* Variables and functions */
 scalar_t__ AARCH64_ATTR_DESCR_MASK ; 
 scalar_t__ AARCH64_ATTR_MASK ; 
 scalar_t__ AARCH64_L3_PAGE ; 
 scalar_t__ AARCH64_L3_SHIFT ; 
 scalar_t__ AARCH64_PAGE_SIZE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_bitmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_bitmap*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct kvm_bitmap*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,void*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(kvm_t *kd, kvm_walk_pages_cb_t *cb, void *arg)
{
	struct vmstate *vm = kd->vmst;
	u_long nptes = vm->hdr.pmapsize / sizeof(aarch64_pte_t);
	u_long bmindex, dva, pa, pteindex, va;
	struct kvm_bitmap bm;
	vm_prot_t prot;
	int ret = 0;

	if (!FUNC3(&bm, vm->hdr.bitmapsize, &bmindex))
		return (0);

	for (pteindex = 0; pteindex < nptes; pteindex++) {
		aarch64_pte_t pte = FUNC1(kd, pteindex);

		if ((pte & AARCH64_ATTR_DESCR_MASK) != AARCH64_L3_PAGE)
			continue;

		va = vm->hdr.kernbase + (pteindex << AARCH64_L3_SHIFT);
		pa = pte & ~AARCH64_ATTR_MASK;
		dva = vm->hdr.dmapbase + pa;
		if (!FUNC5(kd, cb, arg, pa, va, dva,
		    FUNC0(pte), AARCH64_PAGE_SIZE, 0)) {
			goto out;
		}
	}

	while (FUNC4(&bm, &bmindex)) {
		pa = bmindex * AARCH64_PAGE_SIZE;
		dva = vm->hdr.dmapbase + pa;
		if (vm->hdr.dmapend < (dva + AARCH64_PAGE_SIZE))
			break;
		va = 0;
		prot = VM_PROT_READ | VM_PROT_WRITE;
		if (!FUNC5(kd, cb, arg, pa, va, dva,
		    prot, AARCH64_PAGE_SIZE, 0)) {
			goto out;
		}
	}
	ret = 1;

out:
	FUNC2(&bm);
	return (ret);
}