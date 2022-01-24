#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  unsigned long uint64_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct pv_chunk_header {int dummy; } ;
struct pv_chunk {unsigned long* pc_map; TYPE_4__* pc_pmap; int /*<<< orphan*/  pv_va; struct pv_chunk* pc_pventry; } ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  struct pv_chunk* pv_entry_t ;
typedef  int pt_entry_t ;
typedef  TYPE_4__* pmap_t ;
typedef  int pd_entry_t ;
typedef  int /*<<< orphan*/  pc_marker_end_b ;
typedef  int /*<<< orphan*/  pc_marker_b ;
struct TYPE_27__ {int /*<<< orphan*/  pm_pvchunk; } ;
struct TYPE_25__ {int /*<<< orphan*/  pv_list; int /*<<< orphan*/  pv_gen; } ;
struct TYPE_26__ {int flags; int ref_count; int /*<<< orphan*/  phys_addr; TYPE_2__ md; } ;
struct TYPE_24__ {int /*<<< orphan*/  ss; } ;
struct TYPE_23__ {TYPE_1__ s; } ;

/* Variables and functions */
 int ATTR_AF ; 
 int ATTR_MASK ; 
 int ATTR_SW_WIRED ; 
 int /*<<< orphan*/  FUNC0 (struct rwlock**,TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long PC_FREE0 ; 
 unsigned long PC_FREE1 ; 
 unsigned long PC_FREE2 ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_FICTITIOUS ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rwlock**) ; 
 scalar_t__ FUNC11 (struct spglist*) ; 
 TYPE_3__* FUNC12 (struct spglist*) ; 
 int /*<<< orphan*/  FUNC13 (struct spglist*) ; 
 int /*<<< orphan*/  FUNC14 (struct spglist*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 struct pv_chunk* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct pv_chunk*,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 struct pv_chunk* FUNC20 (struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int _NPCM ; 
 int _NPCPV ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (struct pv_chunk_header*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (unsigned long) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 struct md_page* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pc_chunk_count ; 
 int /*<<< orphan*/  pc_chunk_frees ; 
 unsigned long* pc_freemask ; 
 int /*<<< orphan*/  pc_list ; 
 int /*<<< orphan*/  pc_lru ; 
 TYPE_14__ plinks ; 
 int /*<<< orphan*/  FUNC33 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int* FUNC34 (int*,int /*<<< orphan*/ ) ; 
 int FUNC35 (int*) ; 
 int FUNC36 (int*) ; 
 int* FUNC37 (TYPE_4__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC38 (int) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_4__*,int /*<<< orphan*/ ,int,struct spglist*) ; 
 int /*<<< orphan*/  pv_chunks ; 
 int /*<<< orphan*/  pv_chunks_mutex ; 
 int /*<<< orphan*/  pv_entry_count ; 
 int /*<<< orphan*/  pv_entry_frees ; 
 int /*<<< orphan*/  pv_entry_spare ; 
 int /*<<< orphan*/  pv_next ; 
 int /*<<< orphan*/  FUNC41 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC44 (struct spglist*,int) ; 

__attribute__((used)) static vm_page_t
FUNC45(pmap_t locked_pmap, struct rwlock **lockp)
{
	struct pv_chunk *pc, *pc_marker, *pc_marker_end;
	struct pv_chunk_header pc_marker_b, pc_marker_end_b;
	struct md_page *pvh;
	pd_entry_t *pde;
	pmap_t next_pmap, pmap;
	pt_entry_t *pte, tpte;
	pv_entry_t pv;
	vm_offset_t va;
	vm_page_t m, m_pc;
	struct spglist free;
	uint64_t inuse;
	int bit, field, freed, lvl;
	static int active_reclaims = 0;

	FUNC6(locked_pmap, MA_OWNED);
	FUNC2(lockp != NULL, ("reclaim_pv_chunk: lockp is NULL"));

	pmap = NULL;
	m_pc = NULL;
	FUNC13(&free);
	FUNC27(&pc_marker_b, sizeof(pc_marker_b));
	FUNC27(&pc_marker_end_b, sizeof(pc_marker_end_b));
	pc_marker = (struct pv_chunk *)&pc_marker_b;
	pc_marker_end = (struct pv_chunk *)&pc_marker_end_b;

	FUNC30(&pv_chunks_mutex);
	active_reclaims++;
	FUNC18(&pv_chunks, pc_marker, pc_lru);
	FUNC19(&pv_chunks, pc_marker_end, pc_lru);
	while ((pc = FUNC20(pc_marker, pc_lru)) != pc_marker_end &&
	    FUNC11(&free)) {
		next_pmap = pc->pc_pmap;
		if (next_pmap == NULL) {
			/*
			 * The next chunk is a marker.  However, it is
			 * not our marker, so active_reclaims must be
			 * > 1.  Consequently, the next_chunk code
			 * will not rotate the pv_chunks list.
			 */
			goto next_chunk;
		}
		FUNC31(&pv_chunks_mutex);

		/*
		 * A pv_chunk can only be removed from the pc_lru list
		 * when both pv_chunks_mutex is owned and the
		 * corresponding pmap is locked.
		 */
		if (pmap != next_pmap) {
			if (pmap != NULL && pmap != locked_pmap)
				FUNC8(pmap);
			pmap = next_pmap;
			/* Avoid deadlock and lock recursion. */
			if (pmap > locked_pmap) {
				FUNC10(lockp);
				FUNC5(pmap);
				FUNC30(&pv_chunks_mutex);
				continue;
			} else if (pmap != locked_pmap) {
				if (FUNC7(pmap)) {
					FUNC30(&pv_chunks_mutex);
					continue;
				} else {
					pmap = NULL; /* pmap is not locked */
					FUNC30(&pv_chunks_mutex);
					pc = FUNC20(pc_marker, pc_lru);
					if (pc == NULL ||
					    pc->pc_pmap != next_pmap)
						continue;
					goto next_chunk;
				}
			}
		}

		/*
		 * Destroy every non-wired, 4 KB page mapping in the chunk.
		 */
		freed = 0;
		for (field = 0; field < _NPCM; field++) {
			for (inuse = ~pc->pc_map[field] & pc_freemask[field];
			    inuse != 0; inuse &= ~(1UL << bit)) {
				bit = FUNC29(inuse) - 1;
				pv = &pc->pc_pventry[field * 64 + bit];
				va = pv->pv_va;
				pde = FUNC37(pmap, va, &lvl);
				if (lvl != 2)
					continue;
				pte = FUNC34(pde, va);
				tpte = FUNC35(pte);
				if ((tpte & ATTR_SW_WIRED) != 0)
					continue;
				tpte = FUNC36(pte);
				FUNC33(pmap, va);
				m = FUNC4(tpte & ~ATTR_MASK);
				if (FUNC38(tpte))
					FUNC43(m);
				if ((tpte & ATTR_AF) != 0)
					FUNC42(m, PGA_REFERENCED);
				FUNC0(lockp, m);
				FUNC21(&m->md.pv_list, pv, pv_next);
				m->md.pv_gen++;
				if (FUNC15(&m->md.pv_list) &&
				    (m->flags & PG_FICTITIOUS) == 0) {
					pvh = FUNC32(FUNC22(m));
					if (FUNC15(&pvh->pv_list)) {
						FUNC41(m,
						    PGA_WRITEABLE);
					}
				}
				pc->pc_map[field] |= 1UL << bit;
				FUNC40(pmap, va, FUNC35(pde), &free);
				freed++;
			}
		}
		if (freed == 0) {
			FUNC30(&pv_chunks_mutex);
			goto next_chunk;
		}
		/* Every freed mapping is for a 4 KB page. */
		FUNC39(pmap, freed);
		FUNC9(FUNC24(&pv_entry_frees, freed));
		FUNC9(FUNC23(&pv_entry_spare, freed));
		FUNC9(FUNC26(&pv_entry_count, freed));
		FUNC21(&pmap->pm_pvchunk, pc, pc_list);
		if (pc->pc_map[0] == PC_FREE0 && pc->pc_map[1] == PC_FREE1 &&
		    pc->pc_map[2] == PC_FREE2) {
			FUNC9(FUNC25(&pv_entry_spare, _NPCPV));
			FUNC9(FUNC25(&pc_chunk_count, 1));
			FUNC9(FUNC23(&pc_chunk_frees, 1));
			/* Entire chunk is free; return it. */
			m_pc = FUNC4(FUNC1((vm_offset_t)pc));
			FUNC28(m_pc->phys_addr);
			FUNC30(&pv_chunks_mutex);
			FUNC21(&pv_chunks, pc, pc_lru);
			break;
		}
		FUNC18(&pmap->pm_pvchunk, pc, pc_list);
		FUNC30(&pv_chunks_mutex);
		/* One freed pv entry in locked_pmap is sufficient. */
		if (pmap == locked_pmap)
			break;

next_chunk:
		FUNC21(&pv_chunks, pc_marker, pc_lru);
		FUNC17(&pv_chunks, pc, pc_marker, pc_lru);
		if (active_reclaims == 1 && pmap != NULL) {
			/*
			 * Rotate the pv chunks list so that we do not
			 * scan the same pv chunks that could not be
			 * freed (because they contained a wired
			 * and/or superpage mapping) on every
			 * invocation of reclaim_pv_chunk().
			 */
			while ((pc = FUNC16(&pv_chunks)) != pc_marker) {
				FUNC3(pc->pc_pmap != NULL);
				FUNC21(&pv_chunks, pc, pc_lru);
				FUNC19(&pv_chunks, pc, pc_lru);
			}
		}
	}
	FUNC21(&pv_chunks, pc_marker, pc_lru);
	FUNC21(&pv_chunks, pc_marker_end, pc_lru);
	active_reclaims--;
	FUNC31(&pv_chunks_mutex);
	if (pmap != NULL && pmap != locked_pmap)
		FUNC8(pmap);
	if (m_pc == NULL && !FUNC11(&free)) {
		m_pc = FUNC12(&free);
		FUNC14(&free, plinks.s.ss);
		/* Recycle a freed page table page. */
		m_pc->ref_count = 1;
	}
	FUNC44(&free, true);
	return (m_pc);
}