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
typedef  int vm_prot_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int pt2_entry_t ;
typedef  int pt1_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int PTE1_OFFSET ; 
 int PTE1_RO ; 
 int PTE2_RO ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int*) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

vm_page_t
FUNC14(pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
	vm_paddr_t pa;
	pt1_entry_t pte1;
	pt2_entry_t pte2, *pte2p;
	vm_page_t m;

	m = NULL;
	FUNC1(pmap);
	pte1 = FUNC8(FUNC3(pmap, va));
	if (FUNC7(pte1)) {
		if (!(pte1 & PTE1_RO) || !(prot & VM_PROT_WRITE)) {
			pa = FUNC9(pte1) | (va & PTE1_OFFSET);
			m = FUNC0(pa);
			if (!FUNC13(m))
				m = NULL;
		}
	} else if (FUNC6(pte1)) {
		pte2p = FUNC4(pmap, va);
		pte2 = FUNC11(pte2p);
		FUNC5(pte2p);
		if (FUNC10(pte2) &&
		    (!(pte2 & PTE2_RO) || !(prot & VM_PROT_WRITE))) {
			pa = FUNC12(pte2);
			m = FUNC0(pa);
			if (!FUNC13(m))
				m = NULL;
		}
	}
	FUNC2(pmap);
	return (m);
}