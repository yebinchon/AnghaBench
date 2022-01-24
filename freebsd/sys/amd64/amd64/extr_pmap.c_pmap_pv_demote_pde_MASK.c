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
typedef  int vm_paddr_t ;
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
 int /*<<< orphan*/  FUNC0 (struct rwlock**,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ NBPDR ; 
 scalar_t__ NPTEPG ; 
 scalar_t__ PAGE_SIZE ; 
 int PDRMASK ; 
 TYPE_2__* FUNC2 (int) ; 
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
 struct md_page* FUNC11 (int) ; 
 int /*<<< orphan*/  pc_list ; 
 struct pv_chunk* FUNC12 (struct md_page*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  pv_entry_allocs ; 
 int /*<<< orphan*/  pv_entry_count ; 
 int /*<<< orphan*/  pv_entry_spare ; 
 int /*<<< orphan*/  pv_next ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static void
FUNC14(pmap_t pmap, vm_offset_t va, vm_paddr_t pa,
    struct rwlock **lockp)
{
	struct md_page *pvh;
	struct pv_chunk *pc;
	pv_entry_t pv;
	vm_offset_t va_last;
	vm_page_t m;
	int bit, field;

	FUNC3(pmap, MA_OWNED);
	FUNC1((pa & PDRMASK) == 0,
	    ("pmap_pv_demote_pde: pa is not 2mpage aligned"));
	FUNC0(lockp, pa);

	/*
	 * Transfer the 2mpage's pv entry for this mapping to the first
	 * page's pv list.  Once this transfer begins, the pv list lock
	 * must not be released until the last pv entry is reinstantiated.
	 */
	pvh = FUNC11(pa);
	va = FUNC13(va);
	pv = FUNC12(pvh, pmap, va);
	FUNC1(pv != NULL, ("pmap_pv_demote_pde: pv not found"));
	m = FUNC2(pa);
	FUNC6(&m->md.pv_list, pv, pv_next);
	m->md.pv_gen++;
	/* Instantiate the remaining NPTEPG - 1 pv entries. */
	FUNC4(FUNC8(&pv_entry_allocs, NPTEPG - 1));
	va_last = va + NBPDR - PAGE_SIZE;
	for (;;) {
		pc = FUNC5(&pmap->pm_pvchunk);
		FUNC1(pc->pc_map[0] != 0 || pc->pc_map[1] != 0 ||
		    pc->pc_map[2] != 0, ("pmap_pv_demote_pde: missing spare"));
		for (field = 0; field < _NPCM; field++) {
			while (pc->pc_map[field]) {
				bit = FUNC10(pc->pc_map[field]);
				pc->pc_map[field] &= ~(1ul << bit);
				pv = &pc->pc_pventry[field * 64 + bit];
				va += PAGE_SIZE;
				pv->pv_va = va;
				m++;
				FUNC1((m->oflags & VPO_UNMANAGED) == 0,
			    ("pmap_pv_demote_pde: page %p is not managed", m));
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
	FUNC4(FUNC8(&pv_entry_count, NPTEPG - 1));
	FUNC4(FUNC9(&pv_entry_spare, NPTEPG - 1));
}