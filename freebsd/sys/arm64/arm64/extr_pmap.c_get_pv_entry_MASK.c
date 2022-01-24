#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct rwlock {int dummy; } ;
struct pv_chunk {int* pc_map; int /*<<< orphan*/ * pc_pventry; TYPE_2__* pc_pmap; } ;
typedef  int /*<<< orphan*/ * pv_entry_t ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_9__ {int /*<<< orphan*/  pm_pvchunk; } ;
struct TYPE_8__ {int /*<<< orphan*/  phys_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 unsigned long PC_FREE0 ; 
 unsigned long PC_FREE1 ; 
 unsigned long PC_FREE2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pv_chunk* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WIRED ; 
 int _NPCM ; 
 int _NPCPV ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc_chunk_allocs ; 
 int /*<<< orphan*/  pc_chunk_count ; 
 int /*<<< orphan*/  pc_chunk_tryfail ; 
 int /*<<< orphan*/  pc_list ; 
 int /*<<< orphan*/  pc_lru ; 
 int /*<<< orphan*/  pv_chunks ; 
 int /*<<< orphan*/  pv_chunks_mutex ; 
 int /*<<< orphan*/  pv_entry_allocs ; 
 int /*<<< orphan*/  pv_entry_count ; 
 int /*<<< orphan*/  pv_entry_spare ; 
 TYPE_1__* FUNC14 (TYPE_2__*,struct rwlock**) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static pv_entry_t
FUNC16(pmap_t pmap, struct rwlock **lockp)
{
	int bit, field;
	pv_entry_t pv;
	struct pv_chunk *pc;
	vm_page_t m;

	FUNC1(pmap, MA_OWNED);
	FUNC2(FUNC8(&pv_entry_allocs, 1));
retry:
	pc = FUNC3(&pmap->pm_pvchunk);
	if (pc != NULL) {
		for (field = 0; field < _NPCM; field++) {
			if (pc->pc_map[field]) {
				bit = FUNC11(pc->pc_map[field]) - 1;
				break;
			}
		}
		if (field < _NPCM) {
			pv = &pc->pc_pventry[field * 64 + bit];
			pc->pc_map[field] &= ~(1ul << bit);
			/* If this was the last item, move it to tail */
			if (pc->pc_map[0] == 0 && pc->pc_map[1] == 0 &&
			    pc->pc_map[2] == 0) {
				FUNC6(&pmap->pm_pvchunk, pc, pc_list);
				FUNC5(&pmap->pm_pvchunk, pc,
				    pc_list);
			}
			FUNC2(FUNC8(&pv_entry_count, 1));
			FUNC2(FUNC9(&pv_entry_spare, 1));
			return (pv);
		}
	}
	/* No free items, allocate another chunk */
	m = FUNC15(NULL, 0, VM_ALLOC_NORMAL | VM_ALLOC_NOOBJ |
	    VM_ALLOC_WIRED);
	if (m == NULL) {
		if (lockp == NULL) {
			FUNC2(pc_chunk_tryfail++);
			return (NULL);
		}
		m = FUNC14(pmap, lockp);
		if (m == NULL)
			goto retry;
	}
	FUNC2(FUNC7(&pc_chunk_count, 1));
	FUNC2(FUNC7(&pc_chunk_allocs, 1));
	FUNC10(m->phys_addr);
	pc = (void *)FUNC0(m->phys_addr);
	pc->pc_pmap = pmap;
	pc->pc_map[0] = PC_FREE0 & ~1ul;	/* preallocated bit 0 */
	pc->pc_map[1] = PC_FREE1;
	pc->pc_map[2] = PC_FREE2;
	FUNC12(&pv_chunks_mutex);
	FUNC5(&pv_chunks, pc, pc_lru);
	FUNC13(&pv_chunks_mutex);
	pv = &pc->pc_pventry[0];
	FUNC4(&pmap->pm_pvchunk, pc, pc_list);
	FUNC2(FUNC8(&pv_entry_count, 1));
	FUNC2(FUNC7(&pv_entry_spare, _NPCPV - 1));
	return (pv);
}