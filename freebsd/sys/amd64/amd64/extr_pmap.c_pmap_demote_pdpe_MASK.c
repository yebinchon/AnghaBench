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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ NBPDR ; 
 int NPDEPG ; 
 int PDPSHIFT ; 
 int PG_PS ; 
 int PG_U ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int VM_ALLOC_INTERRUPT ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmap_pdpe_demotions ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static boolean_t
FUNC12(pmap_t pmap, pdp_entry_t *pdpe, vm_offset_t va)
{
	pdp_entry_t newpdpe, oldpdpe;
	pd_entry_t *firstpde, newpde, *pde;
	pt_entry_t PG_A, PG_M, PG_RW, PG_V;
	vm_paddr_t pdpgpa;
	vm_page_t pdpg;

	PG_A = FUNC5(pmap);
	PG_M = FUNC7(pmap);
	PG_V = FUNC9(pmap);
	PG_RW = FUNC8(pmap);

	FUNC3(pmap, MA_OWNED);
	oldpdpe = *pdpe;
	FUNC1((oldpdpe & (PG_PS | PG_V)) == (PG_PS | PG_V),
	    ("pmap_demote_pdpe: oldpdpe is missing PG_PS and/or PG_V"));
	if ((pdpg = FUNC10(NULL, va >> PDPSHIFT, VM_ALLOC_INTERRUPT |
	    VM_ALLOC_NOOBJ | VM_ALLOC_WIRED)) == NULL) {
		FUNC0(KTR_PMAP, "pmap_demote_pdpe: failure for va %#lx"
		    " in pmap %p", va, pmap);
		return (FALSE);
	}
	pdpgpa = FUNC4(pdpg);
	firstpde = (pd_entry_t *)FUNC2(pdpgpa);
	newpdpe = pdpgpa | PG_M | PG_A | (oldpdpe & PG_U) | PG_RW | PG_V;
	FUNC1((oldpdpe & PG_A) != 0,
	    ("pmap_demote_pdpe: oldpdpe is missing PG_A"));
	FUNC1((oldpdpe & (PG_M | PG_RW)) != PG_RW,
	    ("pmap_demote_pdpe: oldpdpe is missing PG_M"));
	newpde = oldpdpe;

	/*
	 * Initialize the page directory page.
	 */
	for (pde = firstpde; pde < firstpde + NPDEPG; pde++) {
		*pde = newpde;
		newpde += NBPDR;
	}

	/*
	 * Demote the mapping.
	 */
	*pdpe = newpdpe;

	/*
	 * Invalidate a stale recursive mapping of the page directory page.
	 */
	FUNC6(pmap, (vm_offset_t)FUNC11(va));

	pmap_pdpe_demotions++;
	FUNC0(KTR_PMAP, "pmap_demote_pdpe: success for va %#lx"
	    " in pmap %p", va, pmap);
	return (TRUE);
}