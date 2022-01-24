#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
struct rwlock {int dummy; } ;
struct pv_chunk {int* pc_map; scalar_t__ pv_va; struct pv_chunk* pc_pventry; } ;
struct md_page {int dummy; } ;
typedef  struct pv_chunk* pv_entry_t ;
typedef  TYPE_3__* pmap_t ;
struct TYPE_10__ {int /*<<< orphan*/  pm_pvchunk; } ;
struct TYPE_8__ {int /*<<< orphan*/  pv_gen; int /*<<< orphan*/  pv_list; } ;
struct TYPE_9__ {int oflags; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rwlock**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ L2_OFFSET ; 
 scalar_t__ L2_SIZE ; 
 scalar_t__ Ln_ENTRIES ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ PAGE_SIZE ; 
 TYPE_2__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct pv_chunk* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int VPO_UNMANAGED ; 
 int _NPCM ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC10 (int) ; 
 struct md_page* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  pc_list ; 
 struct pv_chunk* FUNC12 (struct md_page*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  pv_entry_allocs ; 
 int /*<<< orphan*/  pv_entry_count ; 
 int /*<<< orphan*/  pv_entry_spare ; 
 int /*<<< orphan*/  pv_next ; 

__attribute__((used)) static void
FUNC13(pmap_t pmap, vm_offset_t va, vm_paddr_t pa,
    struct rwlock **lockp)
{
	struct md_page *pvh;
	struct pv_chunk *pc;
	pv_entry_t pv;
	vm_offset_t va_last;
	vm_page_t m;
	int bit, field;

	FUNC3(pmap, MA_OWNED);
	FUNC1((va & L2_OFFSET) == 0,
	    ("pmap_pv_demote_l2: va is not 2mpage aligned"));
	FUNC1((pa & L2_OFFSET) == 0,
	    ("pmap_pv_demote_l2: pa is not 2mpage aligned"));
	FUNC0(lockp, pa);

	/*
	 * Transfer the 2mpage's pv entry for this mapping to the first
	 * page's pv list.  Once this transfer begins, the pv list lock
	 * must not be released until the last pv entry is reinstantiated.
	 */
	pvh = FUNC11(pa);
	pv = FUNC12(pvh, pmap, va);
	FUNC1(pv != NULL, ("pmap_pv_demote_l2: pv not found"));
	m = FUNC2(pa);
	FUNC6(&m->md.pv_list, pv, pv_next);
	m->md.pv_gen++;
	/* Instantiate the remaining Ln_ENTRIES - 1 pv entries. */
	FUNC4(FUNC8(&pv_entry_allocs, Ln_ENTRIES - 1));
	va_last = va + L2_SIZE - PAGE_SIZE;
	for (;;) {
		pc = FUNC5(&pmap->pm_pvchunk);
		FUNC1(pc->pc_map[0] != 0 || pc->pc_map[1] != 0 ||
		    pc->pc_map[2] != 0, ("pmap_pv_demote_l2: missing spare"));
		for (field = 0; field < _NPCM; field++) {
			while (pc->pc_map[field]) {
				bit = FUNC10(pc->pc_map[field]) - 1;
				pc->pc_map[field] &= ~(1ul << bit);
				pv = &pc->pc_pventry[field * 64 + bit];
				va += PAGE_SIZE;
				pv->pv_va = va;
				m++;
				FUNC1((m->oflags & VPO_UNMANAGED) == 0,
			    ("pmap_pv_demote_l2: page %p is not managed", m));
				FUNC6(&m->md.pv_list, pv, pv_next);
				m->md.pv_gen++;
				if (va == va_last)
					goto out;
			}
		}
		FUNC7(&pmap->pm_pvchunk, pc, pc_list);
		FUNC6(&pmap->pm_pvchunk, pc, pc_list);
	}
out:
	if (pc->pc_map[0] == 0 && pc->pc_map[1] == 0 && pc->pc_map[2] == 0) {
		FUNC7(&pmap->pm_pvchunk, pc, pc_list);
		FUNC6(&pmap->pm_pvchunk, pc, pc_list);
	}
	FUNC4(FUNC8(&pv_entry_count, Ln_ENTRIES - 1));
	FUNC4(FUNC9(&pv_entry_spare, Ln_ENTRIES - 1));
}