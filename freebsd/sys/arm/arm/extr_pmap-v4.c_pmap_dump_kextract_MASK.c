#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  size_t u_int ;
struct l2_dtable {TYPE_2__* l2_bucket; } ;
typedef  int pt_entry_t ;
typedef  int pt2_entry_t ;
typedef  int pd_entry_t ;
struct TYPE_6__ {struct l2_dtable** pm_l2; TYPE_1__* pm_l1; } ;
struct TYPE_5__ {int* l2b_kva; } ;
struct TYPE_4__ {int* l1_kva; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int L1_SUP_FRAME ; 
 int L1_SUP_OFFSET ; 
 int L1_S_FRAME ; 
 int L1_S_OFFSET ; 
 int L1_S_SUPERSEC ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 int L2_L_FRAME ; 
 int L2_L_OFFSET ; 
 int L2_S_FRAME ; 
 int L2_S_OFFSET ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int L2_S_PROTO ; 
 int L2_TYPE_L ; 
 int L2_TYPE_MASK ; 
 int /*<<< orphan*/  PTE_KERNEL ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 TYPE_3__* kernel_pmap ; 
 scalar_t__ FUNC4 (int) ; 
 size_t FUNC5 (int) ; 

vm_paddr_t
FUNC6(vm_offset_t va, pt2_entry_t *pte2p)
{
	struct l2_dtable *l2;
	pd_entry_t l1pd;
	pt_entry_t *ptep, pte;
	vm_paddr_t pa;
	u_int l1idx;

	l1idx = FUNC0(va);
	l1pd = kernel_pmap->pm_l1->l1_kva[l1idx];
	if (FUNC4(l1pd)) {
		if (l1pd & L1_S_SUPERSEC)
			pa = (l1pd & L1_SUP_FRAME) | (va & L1_SUP_OFFSET);
		else
			pa = (l1pd & L1_S_FRAME) | (va & L1_S_OFFSET);
		pte = L2_S_PROTO | pa |
		    FUNC3(PTE_KERNEL, VM_PROT_READ | VM_PROT_WRITE);
	} else {
		l2 = kernel_pmap->pm_l2[FUNC2(l1idx)];
		if (l2 == NULL ||
		    (ptep = l2->l2_bucket[FUNC1(l1idx)].l2b_kva) == NULL) {
			pte = 0;
			pa = 0;
			goto out;
		}
		pte = ptep[FUNC5(va)];
		if (pte == 0) {
			pa = 0;
			goto out;
		}
		if ((pte & L2_TYPE_MASK) == L2_TYPE_L)
			pa = (pte & L2_L_FRAME) | (va & L2_L_OFFSET);
		else
			pa = (pte & L2_S_FRAME) | (va & L2_S_OFFSET);
	}
out:
	if (pte2p != NULL)
		*pte2p = pte;
	return (pa);
}