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
typedef  scalar_t__ vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int ATTR_DESCR_MASK ; 
 int ATTR_MASK ; 
 int ATTR_SW_MANAGED ; 
 int /*<<< orphan*/  CACHED_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int L1_BLOCK ; 
 scalar_t__ L1_OFFSET ; 
 scalar_t__ L1_SIZE ; 
 int L1_TABLE ; 
 int L2_BLOCK ; 
 scalar_t__ L2_SIZE ; 
 int L3_OFFSET ; 
 int Ln_ENTRIES ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VM_ALLOC_INTERRUPT ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static pt_entry_t *
FUNC13(pmap_t pmap, pt_entry_t *l1, vm_offset_t va)
{
	pt_entry_t *l2, newl2, oldl1;
	vm_offset_t tmpl1;
	vm_paddr_t l2phys, phys;
	vm_page_t ml2;
	int i;

	FUNC4(pmap, MA_OWNED);
	oldl1 = FUNC10(l1);
	FUNC2((oldl1 & ATTR_DESCR_MASK) == L1_BLOCK,
	    ("pmap_demote_l1: Demoting a non-block entry"));
	FUNC2((va & L1_OFFSET) == 0,
	    ("pmap_demote_l1: Invalid virtual address %#lx", va));
	FUNC2((oldl1 & ATTR_SW_MANAGED) == 0,
	    ("pmap_demote_l1: Level 1 table shouldn't be managed"));

	tmpl1 = 0;
	if (va <= (vm_offset_t)l1 && va + L1_SIZE > (vm_offset_t)l1) {
		tmpl1 = FUNC6(PAGE_SIZE);
		if (tmpl1 == 0)
			return (NULL);
	}

	if ((ml2 = FUNC12(NULL, 0, VM_ALLOC_INTERRUPT |
	    VM_ALLOC_NOOBJ | VM_ALLOC_WIRED)) == NULL) {
		FUNC0(KTR_PMAP, "pmap_demote_l1: failure for va %#lx"
		    " in pmap %p", va, pmap);
		return (NULL);
	}

	l2phys = FUNC5(ml2);
	l2 = (pt_entry_t *)FUNC3(l2phys);

	/* Address the range points at */
	phys = oldl1 & ~ATTR_MASK;
	/* The attributed from the old l1 table to be copied */
	newl2 = oldl1 & ATTR_MASK;

	/* Create the new entries */
	for (i = 0; i < Ln_ENTRIES; i++) {
		l2[i] = newl2 | phys;
		phys += L2_SIZE;
	}
	FUNC2(l2[0] == ((oldl1 & ~ATTR_DESCR_MASK) | L2_BLOCK),
	    ("Invalid l2 page (%lx != %lx)", l2[0],
	    (oldl1 & ~ATTR_DESCR_MASK) | L2_BLOCK));

	if (tmpl1 != 0) {
		FUNC8(tmpl1, PAGE_SIZE,
		    FUNC1((vm_offset_t)l1) & ~L3_OFFSET, CACHED_MEMORY);
		l1 = (pt_entry_t *)(tmpl1 + ((vm_offset_t)l1 & PAGE_MASK));
	}

	FUNC11(pmap, l1, l2phys | L1_TABLE, va, PAGE_SIZE);

	if (tmpl1 != 0) {
		FUNC9(tmpl1);
		FUNC7(tmpl1, PAGE_SIZE);
	}

	return (l2);
}