#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_15__ ;

/* Type definitions */
typedef  TYPE_4__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  unsigned long uint32_t ;
struct spglist {int dummy; } ;
struct pv_chunk {unsigned long* pc_map; int /*<<< orphan*/  pv_va; struct pv_chunk* pc_pventry; TYPE_5__* pc_pmap; } ;
struct pch {int dummy; } ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  struct pv_chunk* pv_entry_t ;
typedef  int pt2_entry_t ;
typedef  int /*<<< orphan*/  pt1_entry_t ;
typedef  TYPE_5__* pmap_t ;
struct TYPE_25__ {int resident_count; } ;
struct TYPE_28__ {int /*<<< orphan*/  pm_pvchunk; TYPE_2__ pm_stats; } ;
struct TYPE_24__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_27__ {int flags; int ref_count; TYPE_1__ md; } ;
struct TYPE_26__ {int /*<<< orphan*/  ss; } ;
struct TYPE_23__ {TYPE_3__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_FICTITIOUS ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int PTE2_A ; 
 int PTE2_W ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct spglist*) ; 
 TYPE_4__* FUNC8 (struct spglist*) ; 
 int /*<<< orphan*/  FUNC9 (struct spglist*) ; 
 int /*<<< orphan*/  FUNC10 (struct spglist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct pch*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 struct pv_chunk* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct pch*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pch*,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int _NPCM ; 
 int _NPCPV ; 
 int FUNC19 (unsigned long) ; 
 struct md_page* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pc_chunk_count ; 
 int /*<<< orphan*/  pc_chunk_frees ; 
 unsigned long* pc_freemask ; 
 int /*<<< orphan*/  pc_list ; 
 int /*<<< orphan*/  pc_lru ; 
 TYPE_15__ plinks ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int* FUNC23 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int*) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_5__*,int /*<<< orphan*/ ,struct spglist*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (int) ; 
 int FUNC32 (int*) ; 
 int FUNC33 (int*) ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int /*<<< orphan*/  pv_chunks ; 
 int pv_entry_count ; 
 int pv_entry_frees ; 
 int pv_entry_spare ; 
 int /*<<< orphan*/  pv_next ; 
 scalar_t__ pv_vafree ; 
 int /*<<< orphan*/  FUNC35 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC38 (struct spglist*,int) ; 
 int /*<<< orphan*/  FUNC39 (int) ; 

__attribute__((used)) static vm_page_t
FUNC40(pmap_t locked_pmap)
{
	struct pch newtail;
	struct pv_chunk *pc;
	struct md_page *pvh;
	pt1_entry_t *pte1p;
	pmap_t pmap;
	pt2_entry_t *pte2p, tpte2;
	pv_entry_t pv;
	vm_offset_t va;
	vm_page_t m, m_pc;
	struct spglist free;
	uint32_t inuse;
	int bit, field, freed;

	FUNC3(locked_pmap, MA_OWNED);
	pmap = NULL;
	m_pc = NULL;
	FUNC9(&free);
	FUNC14(&newtail);
	while ((pc = FUNC13(&pv_chunks)) != NULL && (pv_vafree == 0 ||
	    FUNC7(&free))) {
		FUNC17(&pv_chunks, pc, pc_lru);
		if (pmap != pc->pc_pmap) {
			if (pmap != NULL) {
				if (pmap != locked_pmap)
					FUNC5(pmap);
			}
			pmap = pc->pc_pmap;
			/* Avoid deadlock and lock recursion. */
			if (pmap > locked_pmap)
				FUNC2(pmap);
			else if (pmap != locked_pmap && !FUNC4(pmap)) {
				pmap = NULL;
				FUNC16(&newtail, pc, pc_lru);
				continue;
			}
		}

		/*
		 * Destroy every non-wired, 4 KB page mapping in the chunk.
		 */
		freed = 0;
		for (field = 0; field < _NPCM; field++) {
			for (inuse = ~pc->pc_map[field] & pc_freemask[field];
			    inuse != 0; inuse &= ~(1UL << bit)) {
				bit = FUNC19(inuse) - 1;
				pv = &pc->pc_pventry[field * 32 + bit];
				va = pv->pv_va;
				pte1p = FUNC22(pmap, va);
				if (FUNC29(FUNC30(pte1p)))
					continue;
				pte2p = FUNC23(pmap, va);
				tpte2 = FUNC32(pte2p);
				if ((tpte2 & PTE2_W) == 0)
					tpte2 = FUNC33(pte2p);
				FUNC24(pte2p);
				if ((tpte2 & PTE2_W) != 0)
					continue;
				FUNC0(tpte2 != 0,
				    ("pmap_pv_reclaim: pmap %p va %#x zero pte",
				    pmap, va));
				FUNC27(pmap, va);
				m = FUNC1(FUNC34(tpte2));
				if (FUNC31(tpte2))
					FUNC37(m);
				if ((tpte2 & PTE2_A) != 0)
					FUNC36(m, PGA_REFERENCED);
				FUNC17(&m->md.pv_list, pv, pv_next);
				if (FUNC12(&m->md.pv_list) &&
				    (m->flags & PG_FICTITIOUS) == 0) {
					pvh = FUNC20(FUNC18(m));
					if (FUNC12(&pvh->pv_list)) {
						FUNC35(m,
						    PGA_WRITEABLE);
					}
				}
				pc->pc_map[field] |= 1UL << bit;
				FUNC28(pmap, va, &free);
				freed++;
			}
		}
		if (freed == 0) {
			FUNC16(&newtail, pc, pc_lru);
			continue;
		}
		/* Every freed mapping is for a 4 KB page. */
		pmap->pm_stats.resident_count -= freed;
		FUNC6(pv_entry_frees += freed);
		FUNC6(pv_entry_spare += freed);
		pv_entry_count -= freed;
		FUNC17(&pmap->pm_pvchunk, pc, pc_list);
		for (field = 0; field < _NPCM; field++)
			if (pc->pc_map[field] != pc_freemask[field]) {
				FUNC15(&pmap->pm_pvchunk, pc,
				    pc_list);
				FUNC16(&newtail, pc, pc_lru);

				/*
				 * One freed pv entry in locked_pmap is
				 * sufficient.
				 */
				if (pmap == locked_pmap)
					goto out;
				break;
			}
		if (field == _NPCM) {
			FUNC6(pv_entry_spare -= _NPCPV);
			FUNC6(pc_chunk_count--);
			FUNC6(pc_chunk_frees++);
			/* Entire chunk is free; return it. */
			m_pc = FUNC1(FUNC21((vm_offset_t)pc));
			FUNC26((vm_offset_t)pc, 1);
			FUNC25(&pv_vafree, (vm_offset_t)pc);
			break;
		}
	}
out:
	FUNC11(&pv_chunks, &newtail, pc_lru);
	if (pmap != NULL) {
		if (pmap != locked_pmap)
			FUNC5(pmap);
	}
	if (m_pc == NULL && pv_vafree != 0 && FUNC7(&free)) {
		m_pc = FUNC8(&free);
		FUNC10(&free, plinks.s.ss);
		/* Recycle a freed page table page. */
		m_pc->ref_count = 1;
		FUNC39(1);
	}
	FUNC38(&free, false);
	return (m_pc);
}