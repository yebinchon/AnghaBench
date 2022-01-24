#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct vmstate {int* l1pt; } ;
typedef  int /*<<< orphan*/  pte ;
typedef  int off_t ;
struct TYPE_7__ {int /*<<< orphan*/  program; int /*<<< orphan*/  pmfd; struct vmstate* vmst; } ;
typedef  TYPE_1__ kvm_t ;
typedef  int kvaddr_t ;
typedef  int arm_pt_entry_t ;
typedef  int arm_physaddr_t ;
typedef  int arm_pd_entry_t ;

/* Variables and functions */
 int ARM_L1_C_ADDR_MASK ; 
 size_t FUNC0 (int) ; 
 int ARM_L1_S_ADDR_MASK ; 
 int ARM_L1_S_OFFSET ; 
 int /*<<< orphan*/  ARM_L1_S_SIZE ; 
 int ARM_L2_L_FRAME ; 
 int ARM_L2_L_OFFSET ; 
 int /*<<< orphan*/  ARM_L2_L_SIZE ; 
 int ARM_L2_S_FRAME ; 
 int ARM_L2_S_OFFSET ; 
 int ARM_L2_TYPE_L ; 
 int ARM_L2_TYPE_MASK ; 
 int /*<<< orphan*/  ARM_PAGE_SIZE ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*,int,int) ; 

__attribute__((used)) static int
FUNC10(kvm_t *kd, kvaddr_t va, off_t *pa)
{
	struct vmstate *vm = kd->vmst;
	arm_pd_entry_t pd;
	arm_pt_entry_t pte;
	arm_physaddr_t pte_pa;
	off_t pte_off;

	if (vm->l1pt == NULL)
		return (FUNC3(kd, va, pa, ARM_PAGE_SIZE));
	pd = FUNC1(kd, vm->l1pt[FUNC0(va)]);
	if (!FUNC6(pd))
		goto invalid;
	if (FUNC5(pd)) {
		/* 1MB section mapping. */
		*pa = (pd & ARM_L1_S_ADDR_MASK) + (va & ARM_L1_S_OFFSET);
		return  (FUNC3(kd, *pa, pa, ARM_L1_S_SIZE));
	}
	pte_pa = (pd & ARM_L1_C_ADDR_MASK) + FUNC7(va) * sizeof(pte);
	FUNC3(kd, pte_pa, &pte_off, ARM_L1_S_SIZE);
	if (FUNC9(kd->pmfd, &pte, sizeof(pte), pte_off) != sizeof(pte)) {
		FUNC4(kd, kd->program, "_arm_kvatop: pread");
		goto invalid;
	}
	pte = FUNC1(kd, pte);
	if (!FUNC8(pte)) {
		goto invalid;
	}
	if ((pte & ARM_L2_TYPE_MASK) == ARM_L2_TYPE_L) {
		*pa = (pte & ARM_L2_L_FRAME) | (va & ARM_L2_L_OFFSET);
		return (FUNC3(kd, *pa, pa, ARM_L2_L_SIZE));
	}
	*pa = (pte & ARM_L2_S_FRAME) | (va & ARM_L2_S_OFFSET);
	return (FUNC3(kd, *pa, pa, ARM_PAGE_SIZE));
invalid:
	FUNC2(kd, 0, "Invalid address (%jx)", (uintmax_t)va);
	return 0;
}