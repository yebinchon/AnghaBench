#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_paddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  pv_list; } ;
struct vm_page {TYPE_1__ md; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int L2_S_PROTO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct vm_page* FUNC1 (int) ; 
 int /*<<< orphan*/  PTE_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* cdst_pte ; 
 int /*<<< orphan*/  cdstp ; 
 int /*<<< orphan*/  cmtx ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int* csrc_pte ; 
 int /*<<< orphan*/  csrcp ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pte_l2_s_cache_mode ; 

__attribute__((used)) static void
FUNC14(vm_paddr_t src, vm_paddr_t dst)
{
#if 0
	struct vm_page *src_pg = PHYS_TO_VM_PAGE(src);
#endif

	/*
	 * Clean the source page.  Hold the source page's lock for
	 * the duration of the copy so that no other mappings can
	 * be created while we have a potentially aliased mapping.
	 */
#if 0
	/*
	 * XXX: Not needed while we call cpu_dcache_wbinv_all() in
	 * pmap_copy_page().
	 */
	(void) pmap_clean_page(TAILQ_FIRST(&src_pg->md.pv_list), TRUE);
#endif
	/*
	 * Map the pages into the page hook points, copy them, and purge
	 * the cache for the appropriate page. Invalidate the TLB
	 * as required.
	 */
	FUNC11(&cmtx);
	*csrc_pte = L2_S_PROTO | src |
	    FUNC0(PTE_KERNEL, VM_PROT_READ) | pte_l2_s_cache_mode;
	FUNC2(csrc_pte);
	*cdst_pte = L2_S_PROTO | dst |
	    FUNC0(PTE_KERNEL, VM_PROT_WRITE) | pte_l2_s_cache_mode;
	FUNC2(cdst_pte);
	FUNC10(csrcp);
	FUNC10(cdstp);
	FUNC5();
	FUNC4(csrcp, cdstp);
	FUNC12(&cmtx);
	FUNC6(csrcp, PAGE_SIZE);
	FUNC7(cdstp, PAGE_SIZE);
	FUNC8(csrcp, PAGE_SIZE);
	FUNC9(cdstp, PAGE_SIZE);
}