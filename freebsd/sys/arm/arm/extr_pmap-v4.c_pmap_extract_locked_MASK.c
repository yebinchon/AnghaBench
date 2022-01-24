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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  size_t u_int ;
struct l2_dtable {TYPE_2__* l2_bucket; } ;
typedef  int pt_entry_t ;
typedef  TYPE_3__* pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_9__ {struct l2_dtable** pm_l2; TYPE_1__* pm_l1; } ;
struct TYPE_8__ {int* l2b_kva; } ;
struct TYPE_7__ {int* l1_kva; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (int) ; 
 int L1_SUP_FRAME ; 
 int L1_SUP_OFFSET ; 
 int L1_S_FRAME ; 
 int L1_S_OFFSET ; 
 int L1_S_SUPERSEC ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 
 int L2_L_FRAME ; 
 int L2_L_OFFSET ; 
 int L2_S_FRAME ; 
 int L2_S_OFFSET ; 
 int L2_TYPE_L ; 
 int L2_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* kernel_pmap ; 
 scalar_t__ FUNC5 (int) ; 
 size_t FUNC6 (int) ; 

__attribute__((used)) static vm_paddr_t
FUNC7(pmap_t pmap, vm_offset_t va)
{
	struct l2_dtable *l2;
	pd_entry_t l1pd;
	pt_entry_t *ptep, pte;
	vm_paddr_t pa;
	u_int l1idx;

	if (pmap != kernel_pmap)
		FUNC4(pmap);
	l1idx = FUNC1(va);
	l1pd = pmap->pm_l1->l1_kva[l1idx];
	if (FUNC5(l1pd)) {
		/*
		 * These should only happen for the kernel pmap.
		 */
		FUNC0(pmap == kernel_pmap, ("unexpected section"));
		/* XXX: what to do about the bits > 32 ? */
		if (l1pd & L1_S_SUPERSEC)
			pa = (l1pd & L1_SUP_FRAME) | (va & L1_SUP_OFFSET);
		else
			pa = (l1pd & L1_S_FRAME) | (va & L1_S_OFFSET);
	} else {
		/*
		 * Note that we can't rely on the validity of the L1
		 * descriptor as an indication that a mapping exists.
		 * We have to look it up in the L2 dtable.
		 */
		l2 = pmap->pm_l2[FUNC3(l1idx)];
		if (l2 == NULL ||
		    (ptep = l2->l2_bucket[FUNC2(l1idx)].l2b_kva) == NULL)
			return (0);
		pte = ptep[FUNC6(va)];
		if (pte == 0)
			return (0);
		if ((pte & L2_TYPE_MASK) == L2_TYPE_L)
			pa = (pte & L2_L_FRAME) | (va & L2_L_OFFSET);
		else
			pa = (pte & L2_S_FRAME) | (va & L2_S_OFFSET);
	}
	return (pa);
}