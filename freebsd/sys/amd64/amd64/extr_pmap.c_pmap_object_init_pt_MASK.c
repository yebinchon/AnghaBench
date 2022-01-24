#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_size_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  TYPE_3__* vm_object_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_15__ {scalar_t__ type; } ;
struct TYPE_13__ {int pat_mode; } ;
struct TYPE_14__ {scalar_t__ valid; scalar_t__ ref_count; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NBPDR ; 
 scalar_t__ OBJT_DEVICE ; 
 scalar_t__ OBJT_SG ; 
 int PAGE_SIZE ; 
 int PG_PS ; 
 int PG_U ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ VM_PAGE_BITS_ALL ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 size_t FUNC14 (int) ; 
 int /*<<< orphan*/  pmap_pde_mappings ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC20 (TYPE_3__*,scalar_t__) ; 

void
FUNC21(pmap_t pmap, vm_offset_t addr, vm_object_t object,
    vm_pindex_t pindex, vm_size_t size)
{
	pd_entry_t *pde;
	pt_entry_t PG_A, PG_M, PG_RW, PG_V;
	vm_paddr_t pa, ptepa;
	vm_page_t p, pdpg;
	int pat_mode;

	PG_A = FUNC10(pmap);
	PG_M = FUNC13(pmap);
	PG_V = FUNC18(pmap);
	PG_RW = FUNC17(pmap);

	FUNC5(object);
	FUNC0(object->type == OBJT_DEVICE || object->type == OBJT_SG,
	    ("pmap_object_init_pt: non-device object"));
	if ((addr & (NBPDR - 1)) == 0 && (size & (NBPDR - 1)) == 0) {
		if (!FUNC15(pmap))
			return;
		if (!FUNC19(object, pindex, pindex + FUNC8(size)))
			return;
		p = FUNC20(object, pindex);
		FUNC0(p->valid == VM_PAGE_BITS_ALL,
		    ("pmap_object_init_pt: invalid page %p", p));
		pat_mode = p->md.pat_mode;

		/*
		 * Abort the mapping if the first page is not physically
		 * aligned to a 2MB page boundary.
		 */
		ptepa = FUNC6(p);
		if (ptepa & (NBPDR - 1))
			return;

		/*
		 * Skip the first page.  Abort the mapping if the rest of
		 * the pages are not physically contiguous or have differing
		 * memory attributes.
		 */
		p = FUNC4(p, listq);
		for (pa = ptepa + PAGE_SIZE; pa < ptepa + size;
		    pa += PAGE_SIZE) {
			FUNC0(p->valid == VM_PAGE_BITS_ALL,
			    ("pmap_object_init_pt: invalid page %p", p));
			if (pa != FUNC6(p) ||
			    pat_mode != p->md.pat_mode)
				return;
			p = FUNC4(p, listq);
		}

		/*
		 * Map using 2MB pages.  Since "ptepa" is 2M aligned and
		 * "size" is a multiple of 2M, adding the PAT setting to "pa"
		 * will not affect the termination of this loop.
		 */ 
		FUNC2(pmap);
		for (pa = ptepa | FUNC12(pmap, pat_mode, 1);
		    pa < ptepa + size; pa += NBPDR) {
			pdpg = FUNC11(pmap, addr, NULL);
			if (pdpg == NULL) {
				/*
				 * The creation of mappings below is only an
				 * optimization.  If a page directory page
				 * cannot be allocated without blocking,
				 * continue on to the next mapping rather than
				 * blocking.
				 */
				addr += NBPDR;
				continue;
			}
			pde = (pd_entry_t *)FUNC1(FUNC6(pdpg));
			pde = &pde[FUNC14(addr)];
			if ((*pde & PG_V) == 0) {
				FUNC9(pde, pa | PG_PS | PG_M | PG_A |
				    PG_U | PG_RW | PG_V);
				FUNC16(pmap, NBPDR / PAGE_SIZE);
				FUNC7(&pmap_pde_mappings, 1);
			} else {
				/* Continue on if the PDE is already valid. */
				pdpg->ref_count--;
				FUNC0(pdpg->ref_count > 0,
				    ("pmap_object_init_pt: missing reference "
				    "to page directory page, va: 0x%lx", addr));
			}
			addr += NBPDR;
		}
		FUNC3(pmap);
	}
}