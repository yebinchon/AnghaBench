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
typedef  int vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int PDRMASK ; 
 int PG_FRAME ; 
 int PG_PS ; 
 int PG_PS_FRAME ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int VM_PROT_WRITE ; 
 int* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int* FUNC4 (int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

vm_page_t
FUNC8(pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
	pd_entry_t pde, *pdep;
	pt_entry_t pte, PG_RW, PG_V;
	vm_page_t m;

	m = NULL;
	PG_RW = FUNC5(pmap);
	PG_V = FUNC6(pmap);

	FUNC1(pmap);
	pdep = FUNC3(pmap, va);
	if (pdep != NULL && (pde = *pdep)) {
		if (pde & PG_PS) {
			if ((pde & PG_RW) != 0 || (prot & VM_PROT_WRITE) == 0)
				m = FUNC0((pde & PG_PS_FRAME) |
				    (va & PDRMASK));
		} else {
			pte = *FUNC4(pdep, va);
			if ((pte & PG_V) != 0 &&
			    ((pte & PG_RW) != 0 || (prot & VM_PROT_WRITE) == 0))
				m = FUNC0(pte & PG_FRAME);
		}
		if (m != NULL && !FUNC7(m))
			m = NULL;
	}
	FUNC2(pmap);
	return (m);
}