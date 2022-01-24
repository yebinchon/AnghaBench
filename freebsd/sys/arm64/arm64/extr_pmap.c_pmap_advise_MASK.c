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
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int ATTR_AF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_AP_RO ; 
 int ATTR_DESCR_MASK ; 
 int ATTR_MASK ; 
 int ATTR_SW_MANAGED ; 
 int ATTR_SW_WIRED ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int L0_OFFSET ; 
 int L0_SIZE ; 
 int L1_OFFSET ; 
 int L1_SIZE ; 
 int L2_BLOCK ; 
 int L2_OFFSET ; 
 int L2_SIZE ; 
 int L2_TABLE ; 
 int L3_PAGE ; 
 scalar_t__ L3_SIZE ; 
 int MADV_DONTNEED ; 
 int MADV_FREE ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int* FUNC11 (int*,int) ; 
 int* FUNC12 (int*,int) ; 
 int* FUNC13 (int*,int) ; 
 int FUNC14 (int*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ *,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC17 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void
FUNC19(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, int advice)
{
	struct rwlock *lock;
	vm_offset_t va, va_next;
	vm_page_t m;
	pd_entry_t *l0, *l1, *l2, oldl2;
	pt_entry_t *l3, oldl3;

	if (advice != MADV_DONTNEED && advice != MADV_FREE)
		return;

	FUNC3(pmap);
	for (; sva < eva; sva = va_next) {
		l0 = FUNC10(pmap, sva);
		if (FUNC14(l0) == 0) {
			va_next = (sva + L0_SIZE) & ~L0_OFFSET;
			if (va_next < sva)
				va_next = eva;
			continue;
		}
		l1 = FUNC11(l0, sva);
		if (FUNC14(l1) == 0) {
			va_next = (sva + L1_SIZE) & ~L1_OFFSET;
			if (va_next < sva)
				va_next = eva;
			continue;
		}
		va_next = (sva + L2_SIZE) & ~L2_OFFSET;
		if (va_next < sva)
			va_next = eva;
		l2 = FUNC12(l1, sva);
		oldl2 = FUNC14(l2);
		if (oldl2 == 0)
			continue;
		if ((oldl2 & ATTR_DESCR_MASK) == L2_BLOCK) {
			if ((oldl2 & ATTR_SW_MANAGED) == 0)
				continue;
			lock = NULL;
			if (!FUNC8(pmap, l2, sva, &lock)) {
				if (lock != NULL)
					FUNC17(lock);

				/*
				 * The 2MB page mapping was destroyed.
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
			if ((oldl2 & ATTR_SW_WIRED) == 0) {
				va = eva;
				if (va > va_next)
					va = va_next;
				va -= PAGE_SIZE;
				FUNC1(va >= sva,
				    ("pmap_advise: no address gap"));
				l3 = FUNC13(l2, va);
				FUNC1(FUNC14(l3) != 0,
				    ("pmap_advise: invalid PTE"));
				FUNC16(pmap, l3, va, FUNC14(l2),
				    NULL, &lock);
			}
			if (lock != NULL)
				FUNC17(lock);
		}
		FUNC1((FUNC14(l2) & ATTR_DESCR_MASK) == L2_TABLE,
		    ("pmap_advise: invalid L2 entry after demotion"));
		if (va_next > eva)
			va_next = eva;
		va = va_next;
		for (l3 = FUNC13(l2, sva); sva != va_next; l3++,
		    sva += L3_SIZE) {
			oldl3 = FUNC14(l3);
			if ((oldl3 & (ATTR_SW_MANAGED | ATTR_DESCR_MASK)) !=
			    (ATTR_SW_MANAGED | L3_PAGE))
				goto maybe_invlrng;
			else if (FUNC15(oldl3)) {
				if (advice == MADV_DONTNEED) {
					/*
					 * Future calls to pmap_is_modified()
					 * can be avoided by making the page
					 * dirty now.
					 */
					m = FUNC2(oldl3 & ~ATTR_MASK);
					FUNC18(m);
				}
				while (!FUNC5(l3, &oldl3,
				    (oldl3 & ~ATTR_AF) | FUNC0(ATTR_AP_RO)))
					FUNC6();
			} else if ((oldl3 & ATTR_AF) != 0)
				FUNC7(l3, ATTR_AF);
			else
				goto maybe_invlrng;
			if (va == va_next)
				va = sva;
			continue;
maybe_invlrng:
			if (va != va_next) {
				FUNC9(pmap, va, sva);
				va = va_next;
			}
		}
		if (va != va_next)
			FUNC9(pmap, va, sva);
	}
	FUNC4(pmap);
}