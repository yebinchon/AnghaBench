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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  int pml4_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MADV_DONTNEED ; 
 int MADV_FREE ; 
 int NBPDP ; 
 int NBPDR ; 
 int NBPML4 ; 
 scalar_t__ PAGE_SIZE ; 
 int PDPMASK ; 
 int PDRMASK ; 
 int PG_FRAME ; 
 int PG_MANAGED ; 
 int PG_PS ; 
 int PG_W ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int PML4MASK ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int,struct rwlock**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int* FUNC14 (int*,int) ; 
 int* FUNC15 (int*,int) ; 
 int* FUNC16 (int /*<<< orphan*/ ,int) ; 
 int* FUNC17 (int*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ *,struct rwlock**) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

void
FUNC23(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, int advice)
{
	struct rwlock *lock;
	pml4_entry_t *pml4e;
	pdp_entry_t *pdpe;
	pd_entry_t oldpde, *pde;
	pt_entry_t *pte, PG_A, PG_G, PG_M, PG_RW, PG_V;
	vm_offset_t va, va_next;
	vm_page_t m;
	bool anychanged;

	if (advice != MADV_DONTNEED && advice != MADV_FREE)
		return;

	/*
	 * A/D bit emulation requires an alternate code path when clearing
	 * the modified and accessed bits below. Since this function is
	 * advisory in nature we skip it entirely for pmaps that require
	 * A/D bit emulation.
	 */
	if (FUNC9(pmap))
		return;

	PG_A = FUNC5(pmap);
	PG_G = FUNC10(pmap);
	PG_M = FUNC13(pmap);
	PG_V = FUNC20(pmap);
	PG_RW = FUNC19(pmap);
	anychanged = false;
	FUNC7();
	FUNC2(pmap);
	for (; sva < eva; sva = va_next) {
		pml4e = FUNC16(pmap, sva);
		if ((*pml4e & PG_V) == 0) {
			va_next = (sva + NBPML4) & ~PML4MASK;
			if (va_next < sva)
				va_next = eva;
			continue;
		}
		pdpe = FUNC17(pml4e, sva);
		if ((*pdpe & PG_V) == 0) {
			va_next = (sva + NBPDP) & ~PDPMASK;
			if (va_next < sva)
				va_next = eva;
			continue;
		}
		va_next = (sva + NBPDR) & ~PDRMASK;
		if (va_next < sva)
			va_next = eva;
		pde = FUNC15(pdpe, sva);
		oldpde = *pde;
		if ((oldpde & PG_V) == 0)
			continue;
		else if ((oldpde & PG_PS) != 0) {
			if ((oldpde & PG_MANAGED) == 0)
				continue;
			lock = NULL;
			if (!FUNC8(pmap, pde, sva, &lock)) {
				if (lock != NULL)
					FUNC21(lock);

				/*
				 * The large page mapping was destroyed.
				 */
				continue;
			}

			/*
			 * Unless the page mappings are wired, remove the
			 * mapping to a single page so that a subsequent
			 * access may repromote.  Choosing the last page
			 * within the address range [sva, min(va_next, eva))
			 * generally results in more repromotions.  Since the
			 * underlying page table page is fully populated, this
			 * removal never frees a page table page.
			 */
			if ((oldpde & PG_W) == 0) {
				va = eva;
				if (va > va_next)
					va = va_next;
				va -= PAGE_SIZE;
				FUNC0(va >= sva,
				    ("pmap_advise: no address gap"));
				pte = FUNC14(pde, va);
				FUNC0((*pte & PG_V) != 0,
				    ("pmap_advise: invalid PTE"));
				FUNC18(pmap, pte, va, *pde, NULL,
				    &lock);
				anychanged = true;
			}
			if (lock != NULL)
				FUNC21(lock);
		}
		if (va_next > eva)
			va_next = eva;
		va = va_next;
		for (pte = FUNC14(pde, sva); sva != va_next; pte++,
		    sva += PAGE_SIZE) {
			if ((*pte & (PG_MANAGED | PG_V)) != (PG_MANAGED | PG_V))
				goto maybe_invlrng;
			else if ((*pte & (PG_M | PG_RW)) == (PG_M | PG_RW)) {
				if (advice == MADV_DONTNEED) {
					/*
					 * Future calls to pmap_is_modified()
					 * can be avoided by making the page
					 * dirty now.
					 */
					m = FUNC1(*pte & PG_FRAME);
					FUNC22(m);
				}
				FUNC4(pte, PG_M | PG_A);
			} else if ((*pte & PG_A) != 0)
				FUNC4(pte, PG_A);
			else
				goto maybe_invlrng;

			if ((*pte & PG_G) != 0) {
				if (va == va_next)
					va = sva;
			} else
				anychanged = true;
			continue;
maybe_invlrng:
			if (va != va_next) {
				FUNC12(pmap, va, sva);
				va = va_next;
			}
		}
		if (va != va_next)
			FUNC12(pmap, va, sva);
	}
	if (anychanged)
		FUNC11(pmap);
	FUNC3(pmap);
	FUNC6();
}