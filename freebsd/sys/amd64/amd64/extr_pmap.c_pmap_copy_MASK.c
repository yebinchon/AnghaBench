#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  int pml4_entry_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;
struct TYPE_26__ {scalar_t__ pm_type; } ;
struct TYPE_25__ {scalar_t__ ref_count; scalar_t__ pindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ NBPDP ; 
 scalar_t__ NBPDR ; 
 scalar_t__ NBPML4 ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ PDPMASK ; 
 scalar_t__ PDRMASK ; 
 int PG_FRAME ; 
 int PG_MANAGED ; 
 int PG_PS ; 
 int PG_W ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  PMAP_ENTER_NORECLAIM ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ PML4MASK ; 
 int /*<<< orphan*/  FUNC5 (struct spglist*) ; 
 scalar_t__ UPT_MIN_ADDRESS ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_2__*) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,scalar_t__) ; 
 int FUNC13 (TYPE_2__*) ; 
 size_t FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  pmap_pde_mappings ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int* FUNC16 (int*,scalar_t__) ; 
 int* FUNC17 (TYPE_2__*,scalar_t__) ; 
 int* FUNC18 (int*,scalar_t__) ; 
 size_t FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (TYPE_2__*,scalar_t__,int,int /*<<< orphan*/ ,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int) ; 
 scalar_t__ FUNC22 (TYPE_2__*,scalar_t__,TYPE_1__*,struct rwlock**) ; 
 scalar_t__ FUNC23 (TYPE_2__*,scalar_t__,TYPE_1__*,struct spglist*) ; 
 int FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC26 (struct spglist*,int) ; 

void
FUNC27(pmap_t dst_pmap, pmap_t src_pmap, vm_offset_t dst_addr, vm_size_t len,
    vm_offset_t src_addr)
{
	struct rwlock *lock;
	struct spglist free;
	pml4_entry_t *pml4e;
	pdp_entry_t *pdpe;
	pd_entry_t *pde, srcptepaddr;
	pt_entry_t *dst_pte, PG_A, PG_M, PG_V, ptetemp, *src_pte;
	vm_offset_t addr, end_addr, va_next;
	vm_page_t dst_pdpg, dstmpte, srcmpte;

	if (dst_addr != src_addr)
		return;

	if (dst_pmap->pm_type != src_pmap->pm_type)
		return;

	/*
	 * EPT page table entries that require emulation of A/D bits are
	 * sensitive to clearing the PG_A bit (aka EPT_PG_READ). Although
	 * we clear PG_M (aka EPT_PG_WRITE) concomitantly, the PG_U bit
	 * (aka EPT_PG_EXECUTE) could still be set. Since some EPT
	 * implementations flag an EPT misconfiguration for exec-only
	 * mappings we skip this function entirely for emulated pmaps.
	 */
	if (FUNC11(dst_pmap))
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

	PG_A = FUNC8(dst_pmap);
	PG_M = FUNC13(dst_pmap);
	PG_V = FUNC24(dst_pmap);

	for (addr = src_addr; addr < end_addr; addr = va_next) {
		FUNC0(addr < UPT_MIN_ADDRESS,
		    ("pmap_copy: invalid to pmap_copy page tables"));

		pml4e = FUNC17(src_pmap, addr);
		if ((*pml4e & PG_V) == 0) {
			va_next = (addr + NBPML4) & ~PML4MASK;
			if (va_next < addr)
				va_next = end_addr;
			continue;
		}

		pdpe = FUNC18(pml4e, addr);
		if ((*pdpe & PG_V) == 0) {
			va_next = (addr + NBPDP) & ~PDPMASK;
			if (va_next < addr)
				va_next = end_addr;
			continue;
		}

		va_next = (addr + NBPDR) & ~PDRMASK;
		if (va_next < addr)
			va_next = end_addr;

		pde = FUNC16(pdpe, addr);
		srcptepaddr = *pde;
		if (srcptepaddr == 0)
			continue;
			
		if (srcptepaddr & PG_PS) {
			if ((addr & PDRMASK) != 0 || addr + NBPDR > end_addr)
				continue;
			dst_pdpg = FUNC9(dst_pmap, addr, NULL);
			if (dst_pdpg == NULL)
				break;
			pde = (pd_entry_t *)
			    FUNC1(FUNC6(dst_pdpg));
			pde = &pde[FUNC14(addr)];
			if (*pde == 0 && ((srcptepaddr & PG_MANAGED) == 0 ||
			    FUNC20(dst_pmap, addr, srcptepaddr,
			    PMAP_ENTER_NORECLAIM, &lock))) {
				*pde = srcptepaddr & ~PG_W;
				FUNC21(dst_pmap, NBPDR /
				    PAGE_SIZE);
				FUNC7(&pmap_pde_mappings, 1);
			} else
				dst_pdpg->ref_count--;
			continue;
		}

		srcptepaddr &= PG_FRAME;
		srcmpte = FUNC2(srcptepaddr);
		FUNC0(srcmpte->ref_count > 0,
		    ("pmap_copy: source page table page is unused"));

		if (va_next > end_addr)
			va_next = end_addr;

		src_pte = (pt_entry_t *)FUNC1(srcptepaddr);
		src_pte = &src_pte[FUNC19(addr)];
		dstmpte = NULL;
		for (; addr < va_next; addr += PAGE_SIZE, src_pte++) {
			ptetemp = *src_pte;

			/*
			 * We only virtual copy managed pages.
			 */
			if ((ptetemp & PG_MANAGED) == 0)
				continue;

			if (dstmpte != NULL) {
				FUNC0(dstmpte->pindex ==
				    FUNC15(addr),
				    ("dstmpte pindex/addr mismatch"));
				dstmpte->ref_count++;
			} else if ((dstmpte = FUNC10(dst_pmap, addr,
			    NULL)) == NULL)
				goto out;
			dst_pte = (pt_entry_t *)
			    FUNC1(FUNC6(dstmpte));
			dst_pte = &dst_pte[FUNC19(addr)];
			if (*dst_pte == 0 &&
			    FUNC22(dst_pmap, addr,
			    FUNC2(ptetemp & PG_FRAME), &lock)) {
				/*
				 * Clear the wired, modified, and accessed
				 * (referenced) bits during the copy.
				 */
				*dst_pte = ptetemp & ~(PG_W | PG_M | PG_A);
				FUNC21(dst_pmap, 1);
			} else {
				FUNC5(&free);
				if (FUNC23(dst_pmap, addr, dstmpte,
				    &free)) {
					/*
					 * Although "addr" is not mapped,
					 * paging-structure caches could
					 * nonetheless have entries that refer
					 * to the freed page table pages.
					 * Invalidate those entries.
					 */
					FUNC12(dst_pmap, addr);
					FUNC26(&free, true);
				}
				goto out;
			}
			/* Have we copied all of the valid mappings? */ 
			if (dstmpte->ref_count >= srcmpte->ref_count)
				break;
		}
	}
out:
	if (lock != NULL)
		FUNC25(lock);
	FUNC4(src_pmap);
	FUNC4(dst_pmap);
}