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
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
typedef  void pt2_entry_t ;
typedef  int /*<<< orphan*/  pt1_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERNBASE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NB_IN_PT1 ; 
 scalar_t__ NB_IN_PT2 ; 
 scalar_t__ NB_IN_PT2TAB ; 
 scalar_t__ NKPT2PG ; 
 scalar_t__ NPG_IN_PT1 ; 
 scalar_t__ NPG_IN_PT2TAB ; 
 scalar_t__ NPT2_IN_PT2TAB ; 
 scalar_t__ PAGE_SIZE ; 
 void* PT2MAP ; 
 scalar_t__ PT2MAP_SIZE ; 
 int /*<<< orphan*/  PTE1_AP_KRW ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ PTE1_SIZE ; 
 int /*<<< orphan*/  PTE2_ATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ PTE2_SIZE ; 
 scalar_t__ base_pt1 ; 
 int /*<<< orphan*/  FUNC7 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ * kern_pt1 ; 
 void* kern_pt2tab ; 
 void* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  last_paddr ; 
 void* FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ pmap_kern_ttb ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (void*,scalar_t__) ; 
 scalar_t__ ttb_flags ; 
 scalar_t__ virtual_avail ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__) ; 

void
FUNC23(vm_paddr_t last)
{
	vm_paddr_t pt2pg_pa, pt2tab_pa, pa, size;
	vm_offset_t pt2pg_va;
	pt1_entry_t *pte1p;
	pt2_entry_t *pte2p;
	u_int i;
	uint32_t l1_attr;

	/*
	 * Now, we are going to make real kernel mapping. Note that we are
	 * already running on some mapping made in locore.S and we expect
	 * that it's large enough to ensure nofault access to physical memory
	 * allocated herein before switch.
	 *
	 * As kernel image and everything needed before are and will be mapped
	 * by section mappings, we align last physical address to PTE1_SIZE.
	 */
	last_paddr = FUNC15(last);

	/*
	 * Allocate and zero page(s) for kernel L1 page table.
	 *
	 * Note that it's first allocation on space which was PTE1_SIZE
	 * aligned and as such base_pt1 is aligned to NB_IN_PT1 too.
	 */
	base_pt1 = FUNC12(NPG_IN_PT1);
	kern_pt1 = (pt1_entry_t *)FUNC1(base_pt1);
	FUNC7((void*)kern_pt1, NB_IN_PT1);
	FUNC17(kern_pt1, NB_IN_PT1);

	/* Allocate and zero page(s) for kernel PT2TAB. */
	pt2tab_pa = FUNC12(NPG_IN_PT2TAB);
	kern_pt2tab = (pt2_entry_t *)FUNC1(pt2tab_pa);
	FUNC7(kern_pt2tab, NB_IN_PT2TAB);
	FUNC21(kern_pt2tab, NB_IN_PT2TAB);

	/* Allocate and zero page(s) for kernel L2 page tables. */
	pt2pg_pa = FUNC12(NKPT2PG);
	pt2pg_va = FUNC1(pt2pg_pa);
	size = NKPT2PG * PAGE_SIZE;
	FUNC7((void*)pt2pg_va, size);
	FUNC21((pt2_entry_t *)pt2pg_va, size);

	/*
	 * Add a physical memory segment (vm_phys_seg) corresponding to the
	 * preallocated pages for kernel L2 page tables so that vm_page
	 * structures representing these pages will be created. The vm_page
	 * structures are required for promotion of the corresponding kernel
	 * virtual addresses to section mappings.
	 */
	FUNC22(pt2tab_pa, FUNC12(0));

	/*
	 * Insert allocated L2 page table pages to PT2TAB and make
	 * link to all PT2s in L1 page table. See how kernel_vm_end
	 * is initialized.
	 *
	 * We play simple and safe. So every KVA will have underlaying
	 * L2 page table, even kernel image mapped by sections.
	 */
	pte2p = FUNC9(KERNBASE);
	for (pa = pt2pg_pa; pa < pt2pg_pa + size; pa += PTE2_SIZE)
		FUNC13(pte2p++, FUNC5(pa));

	pte1p = FUNC10(KERNBASE);
	for (pa = pt2pg_pa; pa < pt2pg_pa + size; pa += NB_IN_PT2)
		FUNC16(pte1p++, FUNC4(pa));

	/* Make section mappings for kernel. */
	l1_attr = FUNC0(PTE2_ATTR_DEFAULT);
	pte1p = FUNC10(KERNBASE);
	for (pa = FUNC2(KERNBASE); pa < last; pa += PTE1_SIZE)
		FUNC16(pte1p++, FUNC3(pa, PTE1_AP_KRW, l1_attr));

	/*
	 * Get free and aligned space for PT2MAP and make L1 page table links
	 * to L2 page tables held in PT2TAB.
	 *
	 * Note that pages holding PT2s are stored in PT2TAB as pt2_entry_t
	 * descriptors and PT2TAB page(s) itself is(are) used as PT2s. Thus
	 * each entry in PT2TAB maps all PT2s in a page. This implies that
	 * virtual address of PT2MAP must be aligned to NPT2_IN_PG * PTE1_SIZE.
	 */
	PT2MAP = (pt2_entry_t *)(KERNBASE - PT2MAP_SIZE);
	pte1p = FUNC10((vm_offset_t)PT2MAP);
	for (pa = pt2tab_pa, i = 0; i < NPT2_IN_PT2TAB; i++, pa += NB_IN_PT2) {
		FUNC16(pte1p++, FUNC4(pa));
	}

	/*
	 * Store PT2TAB in PT2TAB itself, i.e. self reference mapping.
	 * Each pmap will hold own PT2TAB, so the mapping should be not global.
	 */
	pte2p = FUNC9((vm_offset_t)PT2MAP);
	for (pa = pt2tab_pa, i = 0; i < NPG_IN_PT2TAB; i++, pa += PTE2_SIZE) {
		FUNC13(pte2p++, FUNC6(pa));
	}

	/*
	 * Choose correct L2 page table and make mappings for allocations
	 * made herein which replaces temporary locore.S mappings after a while.
	 * Note that PT2MAP cannot be used until we switch to kern_pt1.
	 *
	 * Note, that these allocations started aligned on 1M section and
	 * kernel PT1 was allocated first. Making of mappings must follow
	 * order of physical allocations as we've used KERNEL_P2V() macro
	 * for virtual addresses resolution.
	 */
	pte2p = FUNC9((vm_offset_t)kern_pt1);
	pt2pg_va = FUNC1(FUNC19(FUNC18(pte2p)));

	pte2p = FUNC11(pt2pg_va, FUNC14((vm_offset_t)kern_pt1));

	/* Make mapping for kernel L1 page table. */
	for (pa = base_pt1, i = 0; i < NPG_IN_PT1; i++, pa += PTE2_SIZE)
		FUNC20(pte2p++, FUNC5(pa));

	/* Make mapping for kernel PT2TAB. */
	for (pa = pt2tab_pa, i = 0; i < NPG_IN_PT2TAB; i++, pa += PTE2_SIZE)
		FUNC20(pte2p++, FUNC5(pa));

	/* Finally, switch from 'boot_pt1' to 'kern_pt1'. */
	pmap_kern_ttb = base_pt1 | ttb_flags;
	FUNC8(pmap_kern_ttb);
	/*
	 * Initialize the first available KVA. As kernel image is mapped by
	 * sections, we are leaving some gap behind.
	 */
	virtual_avail = (vm_offset_t)kern_pt2tab + NPG_IN_PT2TAB * PAGE_SIZE;
}