#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  int /*<<< orphan*/  bitstr_t ;
struct TYPE_4__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  end; } ;

/* Variables and functions */
 int ASID_FIRST_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ L2_SIZE ; 
 int MAXPAGESIZES ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NPV_LIST_LOCKS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int TCR_ASID_16 ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__*) ; 
 int asid_bits ; 
 int asid_next ; 
 int /*<<< orphan*/ * asid_set ; 
 int /*<<< orphan*/  asid_set_mutex ; 
 int asid_set_size ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__* pagesizes ; 
 int /*<<< orphan*/  pv_chunks_mutex ; 
 TYPE_2__ pv_dummy ; 
 int /*<<< orphan*/ * pv_list_locks ; 
 struct md_page* pv_table ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ superpages_enabled ; 
 int /*<<< orphan*/  tcr_el1 ; 
 int vm_initialized ; 
 int vm_phys_nsegs ; 
 TYPE_1__* vm_phys_segs ; 

void
FUNC11(void)
{
	vm_size_t s;
	int i, pv_npg;

	/*
	 * Determine whether an ASID is 8 or 16 bits in size.
	 */
	asid_bits = (FUNC1(tcr_el1) & TCR_ASID_16) != 0 ? 16 : 8;

	/*
	 * Are large page mappings enabled?
	 */
	FUNC3("vm.pmap.superpages_enabled", &superpages_enabled);
	if (superpages_enabled) {
		FUNC0(MAXPAGESIZES > 1 && pagesizes[1] == 0,
		    ("pmap_init: can't assign to pagesizes[1]"));
		pagesizes[1] = L2_SIZE;
	}

	/*
	 * Initialize the ASID allocator.  At this point, we are still too
	 * early in the overall initialization process to use bit_alloc().
	 */
	asid_set_size = 1 << asid_bits;
	asid_set = (bitstr_t *)FUNC7(FUNC5(asid_set_size),
	    M_WAITOK | M_ZERO);
	for (i = 0; i < ASID_FIRST_AVAILABLE; i++)
		FUNC4(asid_set, i);
	asid_next = ASID_FIRST_AVAILABLE;
	FUNC8(&asid_set_mutex, "asid set", NULL, MTX_SPIN);

	/*
	 * Initialize the pv chunk list mutex.
	 */
	FUNC8(&pv_chunks_mutex, "pmap pv chunk list", NULL, MTX_DEF);

	/*
	 * Initialize the pool of pv list locks.
	 */
	for (i = 0; i < NPV_LIST_LOCKS; i++)
		FUNC10(&pv_list_locks[i], "pmap pv list");

	/*
	 * Calculate the size of the pv head table for superpages.
	 */
	pv_npg = FUNC6(vm_phys_segs[vm_phys_nsegs - 1].end, L2_SIZE);

	/*
	 * Allocate memory for the pv head table for superpages.
	 */
	s = (vm_size_t)(pv_npg * sizeof(struct md_page));
	s = FUNC9(s);
	pv_table = (struct md_page *)FUNC7(s, M_WAITOK | M_ZERO);
	for (i = 0; i < pv_npg; i++)
		FUNC2(&pv_table[i].pv_list);
	FUNC2(&pv_dummy.pv_list);

	vm_initialized = 1;
}