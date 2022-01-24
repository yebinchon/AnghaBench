#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  scalar_t__ pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_8__ {scalar_t__ ref_count; scalar_t__ pindex; } ;

/* Variables and functions */
 int ATTR_AF ; 
 int ATTR_AP_RW_BIT ; 
 int ATTR_DESCR_MASK ; 
 int ATTR_MASK ; 
 int ATTR_SW_DBM ; 
 int ATTR_SW_MANAGED ; 
 int ATTR_SW_WIRED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ L0_OFFSET ; 
 scalar_t__ L0_SIZE ; 
 scalar_t__ L1_OFFSET ; 
 scalar_t__ L1_SIZE ; 
 int L2_BLOCK ; 
 scalar_t__ L2_OFFSET ; 
 scalar_t__ L2_SIZE ; 
 int L2_TABLE ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  PMAP_ENTER_NORECLAIM ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct spglist*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ishst ; 
 TYPE_1__* FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int* FUNC12 (scalar_t__,scalar_t__) ; 
 int* FUNC13 (int*,scalar_t__) ; 
 int* FUNC14 (int*,scalar_t__) ; 
 size_t FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  pmap_l2_mappings ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 size_t FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (int*) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (int*,int) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__,TYPE_1__*,struct rwlock**) ; 
 scalar_t__ FUNC23 (scalar_t__,scalar_t__,TYPE_1__*,struct spglist*) ; 
 int /*<<< orphan*/  FUNC24 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC25 (struct spglist*,int) ; 

void
FUNC26(pmap_t dst_pmap, pmap_t src_pmap, vm_offset_t dst_addr, vm_size_t len,
    vm_offset_t src_addr)
{
	struct rwlock *lock;
	struct spglist free;
	pd_entry_t *l0, *l1, *l2, srcptepaddr;
	pt_entry_t *dst_pte, mask, nbits, ptetemp, *src_pte;
	vm_offset_t addr, end_addr, va_next;
	vm_page_t dst_l2pg, dstmpte, srcmpte;

	if (dst_addr != src_addr)
		return;
	end_addr = src_addr + len;
	lock = NULL;
	if (dst_pmap < src_pmap) {
		FUNC3(dst_pmap);
		FUNC3(src_pmap);
	} else {
		FUNC3(src_pmap);
		FUNC3(dst_pmap);
	}
	for (addr = src_addr; addr < end_addr; addr = va_next) {
		l0 = FUNC12(src_pmap, addr);
		if (FUNC18(l0) == 0) {
			va_next = (addr + L0_SIZE) & ~L0_OFFSET;
			if (va_next < addr)
				va_next = end_addr;
			continue;
		}
		l1 = FUNC13(l0, addr);
		if (FUNC18(l1) == 0) {
			va_next = (addr + L1_SIZE) & ~L1_OFFSET;
			if (va_next < addr)
				va_next = end_addr;
			continue;
		}
		va_next = (addr + L2_SIZE) & ~L2_OFFSET;
		if (va_next < addr)
			va_next = end_addr;
		l2 = FUNC14(l1, addr);
		srcptepaddr = FUNC18(l2);
		if (srcptepaddr == 0)
			continue;
		if ((srcptepaddr & ATTR_DESCR_MASK) == L2_BLOCK) {
			if ((addr & L2_OFFSET) != 0 ||
			    addr + L2_SIZE > end_addr)
				continue;
			dst_l2pg = FUNC9(dst_pmap, addr, NULL);
			if (dst_l2pg == NULL)
				break;
			l2 = (pd_entry_t *)
			    FUNC1(FUNC6(dst_l2pg));
			l2 = &l2[FUNC15(addr)];
			if (FUNC18(l2) == 0 &&
			    ((srcptepaddr & ATTR_SW_MANAGED) == 0 ||
			    FUNC19(dst_pmap, addr, srcptepaddr,
			    PMAP_ENTER_NORECLAIM, &lock))) {
				mask = ATTR_AF | ATTR_SW_WIRED;
				nbits = 0;
				if ((srcptepaddr & ATTR_SW_DBM) != 0)
					nbits |= ATTR_AP_RW_BIT;
				FUNC21(l2, (srcptepaddr & ~mask) | nbits);
				FUNC20(dst_pmap, L2_SIZE /
				    PAGE_SIZE);
				FUNC7(&pmap_l2_mappings, 1);
			} else
				dst_l2pg->ref_count--;
			continue;
		}
		FUNC0((srcptepaddr & ATTR_DESCR_MASK) == L2_TABLE,
		    ("pmap_copy: invalid L2 entry"));
		srcptepaddr &= ~ATTR_MASK;
		srcmpte = FUNC2(srcptepaddr);
		FUNC0(srcmpte->ref_count > 0,
		    ("pmap_copy: source page table page is unused"));
		if (va_next > end_addr)
			va_next = end_addr;
		src_pte = (pt_entry_t *)FUNC1(srcptepaddr);
		src_pte = &src_pte[FUNC17(addr)];
		dstmpte = NULL;
		for (; addr < va_next; addr += PAGE_SIZE, src_pte++) {
			ptetemp = FUNC18(src_pte);

			/*
			 * We only virtual copy managed pages.
			 */
			if ((ptetemp & ATTR_SW_MANAGED) == 0)
				continue;

			if (dstmpte != NULL) {
				FUNC0(dstmpte->pindex == FUNC16(addr),
				    ("dstmpte pindex/addr mismatch"));
				dstmpte->ref_count++;
			} else if ((dstmpte = FUNC10(dst_pmap, addr,
			    NULL)) == NULL)
				goto out;
			dst_pte = (pt_entry_t *)
			    FUNC1(FUNC6(dstmpte));
			dst_pte = &dst_pte[FUNC17(addr)];
			if (FUNC18(dst_pte) == 0 &&
			    FUNC22(dst_pmap, addr,
			    FUNC2(ptetemp & ~ATTR_MASK), &lock)) {
				/*
				 * Clear the wired, modified, and accessed
				 * (referenced) bits during the copy.
				 */
				mask = ATTR_AF | ATTR_SW_WIRED;
				nbits = 0;
				if ((ptetemp & ATTR_SW_DBM) != 0)
					nbits |= ATTR_AP_RW_BIT;
				FUNC21(dst_pte, (ptetemp & ~mask) | nbits);
				FUNC20(dst_pmap, 1);
			} else {
				FUNC5(&free);
				if (FUNC23(dst_pmap, addr, dstmpte,
				    &free)) {
					/*
					 * Although "addr" is not mapped,
					 * the TLB could nonetheless have
					 * intermediate entries that refer
					 * to the freed page table pages.
					 * Invalidate those entries.
					 *
					 * XXX redundant invalidation
					 */
					FUNC11(dst_pmap, addr);
					FUNC25(&free, true);
				}
				goto out;
			}
			/* Have we copied all of the valid mappings? */ 
			if (dstmpte->ref_count >= srcmpte->ref_count)
				break;
		}
	}
out:
	/*
	 * XXX This barrier may not be needed because the destination pmap is
	 * not active.
	 */
	FUNC8(ishst);

	if (lock != NULL)
		FUNC24(lock);
	FUNC4(src_pmap);
	FUNC4(dst_pmap);
}