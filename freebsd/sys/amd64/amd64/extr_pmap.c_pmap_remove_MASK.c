#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  int pml4_entry_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;
struct TYPE_16__ {scalar_t__ resident_count; } ;
struct TYPE_17__ {TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int NBPDP ; 
 int NBPDR ; 
 int NBPML4 ; 
 int PAGE_SIZE ; 
 int PDPMASK ; 
 int PDRMASK ; 
 int PG_PS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int PML4MASK ; 
 int /*<<< orphan*/  FUNC2 (struct spglist*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int*,int,struct rwlock**) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int* FUNC8 (TYPE_2__*,int) ; 
 int* FUNC9 (int*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int) ; 
 int* FUNC11 (TYPE_2__*,int) ; 
 int* FUNC12 (int*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int*,struct spglist*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int*,int,struct spglist*,struct rwlock**) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int,int,int*,struct spglist*,struct rwlock**) ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC18 (struct spglist*,int) ; 

void
FUNC19(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
	struct rwlock *lock;
	vm_offset_t va_next;
	pml4_entry_t *pml4e;
	pdp_entry_t *pdpe;
	pd_entry_t ptpaddr, *pde;
	pt_entry_t PG_G, PG_V;
	struct spglist free;
	int anyvalid;

	PG_G = FUNC6(pmap);
	PG_V = FUNC16(pmap);

	/*
	 * Perform an unsynchronized read.  This is, however, safe.
	 */
	if (pmap->pm_stats.resident_count == 0)
		return;

	anyvalid = 0;
	FUNC2(&free);

	FUNC4();
	FUNC0(pmap);
	FUNC10(pmap, sva, eva);

	/*
	 * special handling of removing one page.  a very
	 * common operation and easy to short circuit some
	 * code.
	 */
	if (sva + PAGE_SIZE == eva) {
		pde = FUNC8(pmap, sva);
		if (pde && (*pde & PG_PS) == 0) {
			FUNC13(pmap, sva, pde, &free);
			goto out;
		}
	}

	lock = NULL;
	for (; sva < eva; sva = va_next) {

		if (pmap->pm_stats.resident_count == 0)
			break;

		pml4e = FUNC11(pmap, sva);
		if ((*pml4e & PG_V) == 0) {
			va_next = (sva + NBPML4) & ~PML4MASK;
			if (va_next < sva)
				va_next = eva;
			continue;
		}

		pdpe = FUNC12(pml4e, sva);
		if ((*pdpe & PG_V) == 0) {
			va_next = (sva + NBPDP) & ~PDPMASK;
			if (va_next < sva)
				va_next = eva;
			continue;
		}

		/*
		 * Calculate index for next page table.
		 */
		va_next = (sva + NBPDR) & ~PDRMASK;
		if (va_next < sva)
			va_next = eva;

		pde = FUNC9(pdpe, sva);
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
			 * Are we removing the entire large page?  If not,
			 * demote the mapping and fall through.
			 */
			if (sva + NBPDR == va_next && eva >= va_next) {
				/*
				 * The TLB entry for a PG_G mapping is
				 * invalidated by pmap_remove_pde().
				 */
				if ((ptpaddr & PG_G) == 0)
					anyvalid = 1;
				FUNC14(pmap, pde, sva, &free, &lock);
				continue;
			} else if (!FUNC5(pmap, pde, sva,
			    &lock)) {
				/* The large page mapping was destroyed. */
				continue;
			} else
				ptpaddr = *pde;
		}

		/*
		 * Limit our scan to either the end of the va represented
		 * by the current page table page, or to the end of the
		 * range being removed.
		 */
		if (va_next > eva)
			va_next = eva;

		if (FUNC15(pmap, sva, va_next, pde, &free, &lock))
			anyvalid = 1;
	}
	if (lock != NULL)
		FUNC17(lock);
out:
	if (anyvalid)
		FUNC7(pmap);
	FUNC1(pmap);
	FUNC3();
	FUNC18(&free, true);
}