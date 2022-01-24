#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_21__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  unsigned long uint64_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct pv_chunks_list {int active_reclaims; int /*<<< orphan*/  pvc_lock; int /*<<< orphan*/  pvc_list; } ;
struct pv_chunk_header {int dummy; } ;
struct pv_chunk {unsigned long* pc_map; TYPE_4__* pc_pmap; int /*<<< orphan*/  pv_va; struct pv_chunk* pc_pventry; } ;
struct md_page {int /*<<< orphan*/  pv_list; } ;
typedef  struct pv_chunk* pv_entry_t ;
typedef  int pt_entry_t ;
typedef  TYPE_4__* pmap_t ;
typedef  int pd_entry_t ;
typedef  int /*<<< orphan*/  pc_marker_end_b ;
typedef  int /*<<< orphan*/  pc_marker_b ;
struct TYPE_33__ {int /*<<< orphan*/  pm_pvchunk; } ;
struct TYPE_29__ {int /*<<< orphan*/  pv_list; int /*<<< orphan*/  pv_gen; } ;
struct TYPE_32__ {int flags; int ref_count; int /*<<< orphan*/  phys_addr; TYPE_1__ md; } ;
struct TYPE_31__ {int /*<<< orphan*/  ss; } ;
struct TYPE_30__ {TYPE_2__ s; } ;

/* Variables and functions */
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
 int PG_FRAME ; 
 int PG_PS ; 
 int PG_W ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rwlock**) ; 
 scalar_t__ FUNC10 (struct spglist*) ; 
 TYPE_3__* FUNC11 (struct spglist*) ; 
 int /*<<< orphan*/  FUNC12 (struct spglist*) ; 
 int /*<<< orphan*/  FUNC13 (struct spglist*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 struct pv_chunk* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct pv_chunk*,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 struct pv_chunk* FUNC19 (struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int _NPCM ; 
 int _NPCPV ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int) ; 
 int FUNC26 (unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (struct pv_chunk_header*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 struct md_page* FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pc_chunk_count ; 
 int /*<<< orphan*/  pc_chunk_frees ; 
 unsigned long* pc_freemask ; 
 int /*<<< orphan*/  pc_list ; 
 int /*<<< orphan*/  pc_lru ; 
 TYPE_21__ plinks ; 
 int FUNC32 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int FUNC35 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC37 (TYPE_4__*) ; 
 int FUNC38 () ; 
 int* FUNC39 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int* FUNC40 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_4__*,int) ; 
 int FUNC42 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_4__*,int /*<<< orphan*/ ,int,struct spglist*) ; 
 int FUNC44 (int*) ; 
 struct pv_chunks_list* pv_chunks ; 
 int /*<<< orphan*/  pv_entry_count ; 
 int /*<<< orphan*/  pv_entry_frees ; 
 int /*<<< orphan*/  pv_entry_spare ; 
 int /*<<< orphan*/  pv_next ; 
 int /*<<< orphan*/  FUNC45 (TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC49 (struct spglist*,int) ; 

__attribute__((used)) static vm_page_t
FUNC50(pmap_t locked_pmap, struct rwlock **lockp, int domain)
{
	struct pv_chunks_list *pvc;
	struct pv_chunk *pc, *pc_marker, *pc_marker_end;
	struct pv_chunk_header pc_marker_b, pc_marker_end_b;
	struct md_page *pvh;
	pd_entry_t *pde;
	pmap_t next_pmap, pmap;
	pt_entry_t *pte, tpte;
	pt_entry_t PG_G, PG_A, PG_M, PG_RW;
	pv_entry_t pv;
	vm_offset_t va;
	vm_page_t m, m_pc;
	struct spglist free;
	uint64_t inuse;
	int bit, field, freed;
	bool start_di;

	FUNC6(locked_pmap, MA_OWNED);
	FUNC2(lockp != NULL, ("reclaim_pv_chunk: lockp is NULL"));
	pmap = NULL;
	m_pc = NULL;
	PG_G = PG_A = PG_M = PG_RW = 0;
	FUNC12(&free);
	FUNC27(&pc_marker_b, sizeof(pc_marker_b));
	FUNC27(&pc_marker_end_b, sizeof(pc_marker_end_b));
	pc_marker = (struct pv_chunk *)&pc_marker_b;
	pc_marker_end = (struct pv_chunk *)&pc_marker_end_b;

	/*
	 * A delayed invalidation block should already be active if
	 * pmap_advise() or pmap_remove() called this function by way
	 * of pmap_demote_pde_locked().
	 */
	start_di = FUNC38();

	pvc = &pv_chunks[domain];
	FUNC29(&pvc->pvc_lock);
	pvc->active_reclaims++;
	FUNC17(&pvc->pvc_list, pc_marker, pc_lru);
	FUNC18(&pvc->pvc_list, pc_marker_end, pc_lru);
	while ((pc = FUNC19(pc_marker, pc_lru)) != pc_marker_end &&
	    FUNC10(&free)) {
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
		FUNC30(&pvc->pvc_lock);

		/*
		 * A pv_chunk can only be removed from the pc_lru list
		 * when both pc_chunks_mutex is owned and the
		 * corresponding pmap is locked.
		 */
		if (pmap != next_pmap) {
			FUNC45(pmap, locked_pmap,
			    start_di);
			pmap = next_pmap;
			/* Avoid deadlock and lock recursion. */
			if (pmap > locked_pmap) {
				FUNC9(lockp);
				FUNC5(pmap);
				if (start_di)
					FUNC34();
				FUNC29(&pvc->pvc_lock);
				continue;
			} else if (pmap != locked_pmap) {
				if (FUNC7(pmap)) {
					if (start_di)
						FUNC34();
					FUNC29(&pvc->pvc_lock);
					continue;
				} else {
					pmap = NULL; /* pmap is not locked */
					FUNC29(&pvc->pvc_lock);
					pc = FUNC19(pc_marker, pc_lru);
					if (pc == NULL ||
					    pc->pc_pmap != next_pmap)
						continue;
					goto next_chunk;
				}
			} else if (start_di)
				FUNC34();
			PG_G = FUNC35(pmap);
			PG_A = FUNC32(pmap);
			PG_M = FUNC37(pmap);
			PG_RW = FUNC42(pmap);
		}

		/*
		 * Destroy every non-wired, 4 KB page mapping in the chunk.
		 */
		freed = 0;
		for (field = 0; field < _NPCM; field++) {
			for (inuse = ~pc->pc_map[field] & pc_freemask[field];
			    inuse != 0; inuse &= ~(1UL << bit)) {
				bit = FUNC26(inuse);
				pv = &pc->pc_pventry[field * 64 + bit];
				va = pv->pv_va;
				pde = FUNC39(pmap, va);
				if ((*pde & PG_PS) != 0)
					continue;
				pte = FUNC40(pde, va);
				if ((*pte & PG_W) != 0)
					continue;
				tpte = FUNC44(pte);
				if ((tpte & PG_G) != 0)
					FUNC36(pmap, va);
				m = FUNC4(tpte & PG_FRAME);
				if ((tpte & (PG_M | PG_RW)) == (PG_M | PG_RW))
					FUNC48(m);
				if ((tpte & PG_A) != 0)
					FUNC47(m, PGA_REFERENCED);
				FUNC0(lockp, m);
				FUNC20(&m->md.pv_list, pv, pv_next);
				m->md.pv_gen++;
				if (FUNC14(&m->md.pv_list) &&
				    (m->flags & PG_FICTITIOUS) == 0) {
					pvh = FUNC31(FUNC21(m));
					if (FUNC14(&pvh->pv_list)) {
						FUNC46(m,
						    PGA_WRITEABLE);
					}
				}
				FUNC33(m);
				pc->pc_map[field] |= 1UL << bit;
				FUNC43(pmap, va, *pde, &free);
				freed++;
			}
		}
		if (freed == 0) {
			FUNC29(&pvc->pvc_lock);
			goto next_chunk;
		}
		/* Every freed mapping is for a 4 KB page. */
		FUNC41(pmap, freed);
		FUNC8(FUNC23(&pv_entry_frees, freed));
		FUNC8(FUNC22(&pv_entry_spare, freed));
		FUNC8(FUNC25(&pv_entry_count, freed));
		FUNC20(&pmap->pm_pvchunk, pc, pc_list);
		if (pc->pc_map[0] == PC_FREE0 && pc->pc_map[1] == PC_FREE1 &&
		    pc->pc_map[2] == PC_FREE2) {
			FUNC8(FUNC24(&pv_entry_spare, _NPCPV));
			FUNC8(FUNC24(&pc_chunk_count, 1));
			FUNC8(FUNC22(&pc_chunk_frees, 1));
			/* Entire chunk is free; return it. */
			m_pc = FUNC4(FUNC1((vm_offset_t)pc));
			FUNC28(m_pc->phys_addr);
			FUNC29(&pvc->pvc_lock);
			FUNC20(&pvc->pvc_list, pc, pc_lru);
			break;
		}
		FUNC17(&pmap->pm_pvchunk, pc, pc_list);
		FUNC29(&pvc->pvc_lock);
		/* One freed pv entry in locked_pmap is sufficient. */
		if (pmap == locked_pmap)
			break;
next_chunk:
		FUNC20(&pvc->pvc_list, pc_marker, pc_lru);
		FUNC16(&pvc->pvc_list, pc, pc_marker, pc_lru);
		if (pvc->active_reclaims == 1 && pmap != NULL) {
			/*
			 * Rotate the pv chunks list so that we do not
			 * scan the same pv chunks that could not be
			 * freed (because they contained a wired
			 * and/or superpage mapping) on every
			 * invocation of reclaim_pv_chunk().
			 */
			while ((pc = FUNC15(&pvc->pvc_list)) != pc_marker) {
				FUNC3(pc->pc_pmap != NULL);
				FUNC20(&pvc->pvc_list, pc, pc_lru);
				FUNC18(&pvc->pvc_list, pc, pc_lru);
			}
		}
	}
	FUNC20(&pvc->pvc_list, pc_marker, pc_lru);
	FUNC20(&pvc->pvc_list, pc_marker_end, pc_lru);
	pvc->active_reclaims--;
	FUNC30(&pvc->pvc_lock);
	FUNC45(pmap, locked_pmap, start_di);
	if (m_pc == NULL && !FUNC10(&free)) {
		m_pc = FUNC11(&free);
		FUNC13(&free, plinks.s.ss);
		/* Recycle a freed page table page. */
		m_pc->ref_count = 1;
	}
	FUNC49(&free, true);
	return (m_pc);
}