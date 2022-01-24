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
typedef  int vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_AP_RO ; 
 int ATTR_DESCR_MASK ; 
 int ATTR_MASK ; 
 int ATTR_SW_MANAGED ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int L2_BLOCK ; 
 int L2_OFFSET ; 
 size_t L2_SIZE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(pmap_t pmap, pt_entry_t *l2, vm_offset_t sva, pt_entry_t mask,
    pt_entry_t nbits)
{
	pd_entry_t old_l2;
	vm_page_t m, mt;

	FUNC3(pmap, MA_OWNED);
	FUNC1((sva & L2_OFFSET) == 0,
	    ("pmap_protect_l2: sva is not 2mpage aligned"));
	old_l2 = FUNC6(l2);
	FUNC1((old_l2 & ATTR_DESCR_MASK) == L2_BLOCK,
	    ("pmap_protect_l2: L2e %lx is not a block mapping", old_l2));

	/*
	 * Return if the L2 entry already has the desired access restrictions
	 * in place.
	 */
retry:
	if ((old_l2 & mask) == nbits)
		return;

	/*
	 * When a dirty read/write superpage mapping is write protected,
	 * update the dirty field of each of the superpage's constituent 4KB
	 * pages.
	 */
	if ((old_l2 & ATTR_SW_MANAGED) != 0 &&
	    (nbits & FUNC0(ATTR_AP_RO)) != 0 && FUNC7(old_l2)) {
		m = FUNC2(old_l2 & ~ATTR_MASK);
		for (mt = m; mt < &m[L2_SIZE / PAGE_SIZE]; mt++)
			FUNC8(mt);
	}

	if (!FUNC4(l2, &old_l2, (old_l2 & ~mask) | nbits))
		goto retry;

	/*
	 * Since a promotion must break the 4KB page mappings before making
	 * the 2MB page mapping, a pmap_invalidate_page() suffices.
	 */
	FUNC5(pmap, sva);
}