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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int pml4_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NBPDP ; 
 int NBPDR ; 
 int NBPML4 ; 
 scalar_t__ PAGE_SIZE ; 
 int PDPMASK ; 
 int PDRMASK ; 
 int PG_FRAME ; 
 int PG_MANAGED ; 
 int PG_PS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int PML4MASK ; 
 scalar_t__ TRUE ; 
 int VM_PROT_ALL ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_NONE ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int pg_nx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int* FUNC10 (int*,int) ; 
 int* FUNC11 (int*,int) ; 
 int* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int* FUNC13 (int*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void
FUNC19(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, vm_prot_t prot)
{
	vm_offset_t va_next;
	pml4_entry_t *pml4e;
	pdp_entry_t *pdpe;
	pd_entry_t ptpaddr, *pde;
	pt_entry_t *pte, PG_G, PG_M, PG_RW, PG_V;
	boolean_t anychanged;

	FUNC0((prot & ~VM_PROT_ALL) == 0, ("invalid prot %x", prot));
	if (prot == VM_PROT_NONE) {
		FUNC15(pmap, sva, eva);
		return;
	}

	if ((prot & (VM_PROT_WRITE|VM_PROT_EXECUTE)) ==
	    (VM_PROT_WRITE|VM_PROT_EXECUTE))
		return;

	PG_G = FUNC6(pmap);
	PG_M = FUNC9(pmap);
	PG_V = FUNC17(pmap);
	PG_RW = FUNC16(pmap);
	anychanged = FALSE;

	/*
	 * Although this function delays and batches the invalidation
	 * of stale TLB entries, it does not need to call
	 * pmap_delayed_invl_start() and
	 * pmap_delayed_invl_finish(), because it does not
	 * ordinarily destroy mappings.  Stale TLB entries from
	 * protection-only changes need only be invalidated before the
	 * pmap lock is released, because protection-only changes do
	 * not destroy PV entries.  Even operations that iterate over
	 * a physical page's PV list of mappings, like
	 * pmap_remove_write(), acquire the pmap lock for each
	 * mapping.  Consequently, for protection-only changes, the
	 * pmap lock suffices to synchronize both page table and TLB
	 * updates.
	 *
	 * This function only destroys a mapping if pmap_demote_pde()
	 * fails.  In that case, stale TLB entries are immediately
	 * invalidated.
	 */
	
	FUNC2(pmap);
	for (; sva < eva; sva = va_next) {

		pml4e = FUNC12(pmap, sva);
		if ((*pml4e & PG_V) == 0) {
			va_next = (sva + NBPML4) & ~PML4MASK;
			if (va_next < sva)
				va_next = eva;
			continue;
		}

		pdpe = FUNC13(pml4e, sva);
		if ((*pdpe & PG_V) == 0) {
			va_next = (sva + NBPDP) & ~PDPMASK;
			if (va_next < sva)
				va_next = eva;
			continue;
		}

		va_next = (sva + NBPDR) & ~PDRMASK;
		if (va_next < sva)
			va_next = eva;

		pde = FUNC11(pdpe, sva);
		ptpaddr = *pde;

		/*
		 * Weed out invalid mappings.
		 */
		if (ptpaddr == 0)
			continue;

		/*
		 * Check for large page.
		 */
		if ((ptpaddr & PG_PS) != 0) {
			/*
			 * Are we protecting the entire large page?  If not,
			 * demote the mapping and fall through.
			 */
			if (sva + NBPDR == va_next && eva >= va_next) {
				/*
				 * The TLB entry for a PG_G mapping is
				 * invalidated by pmap_protect_pde().
				 */
				if (FUNC14(pmap, pde, sva, prot))
					anychanged = TRUE;
				continue;
			} else if (!FUNC5(pmap, pde, sva)) {
				/*
				 * The large page mapping was destroyed.
				 */
				continue;
			}
		}

		if (va_next > eva)
			va_next = eva;

		for (pte = FUNC10(pde, sva); sva != va_next; pte++,
		    sva += PAGE_SIZE) {
			pt_entry_t obits, pbits;
			vm_page_t m;

retry:
			obits = pbits = *pte;
			if ((pbits & PG_V) == 0)
				continue;

			if ((prot & VM_PROT_WRITE) == 0) {
				if ((pbits & (PG_MANAGED | PG_M | PG_RW)) ==
				    (PG_MANAGED | PG_M | PG_RW)) {
					m = FUNC1(pbits & PG_FRAME);
					FUNC18(m);
				}
				pbits &= ~(PG_RW | PG_M);
			}
			if ((prot & VM_PROT_EXECUTE) == 0)
				pbits |= pg_nx;

			if (pbits != obits) {
				if (!FUNC4(pte, obits, pbits))
					goto retry;
				if (obits & PG_G)
					FUNC8(pmap, sva);
				else
					anychanged = TRUE;
			}
		}
	}
	if (anychanged)
		FUNC7(pmap);
	FUNC3(pmap);
}