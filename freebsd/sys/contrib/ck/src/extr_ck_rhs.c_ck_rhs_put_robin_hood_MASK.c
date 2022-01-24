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
struct ck_rhs_map {long (* probe_func ) (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int capacity; int /*<<< orphan*/ * generation; int /*<<< orphan*/  probe_limit; } ;
struct ck_rhs_entry_desc {unsigned long probes; int in_rh; } ;
struct ck_rhs {int mode; struct ck_rhs_map* map; } ;

/* Variables and functions */
 void* FUNC0 (void const*) ; 
 unsigned long CK_RHS_G_MASK ; 
 int CK_RHS_MAX_RH ; 
 int CK_RHS_MODE_OBJECT ; 
 int /*<<< orphan*/  CK_RHS_PROBE_NO_RH ; 
 int /*<<< orphan*/  CK_RHS_PROBE_ROBIN_HOOD ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ck_rhs*,long,long,unsigned long) ; 
 struct ck_rhs_entry_desc* FUNC6 (struct ck_rhs_map*,long) ; 
 void const* FUNC7 (struct ck_rhs_map*,long) ; 
 int /*<<< orphan*/  FUNC8 (struct ck_rhs_map*,long) ; 
 unsigned long FUNC9 (struct ck_rhs_map*,long,unsigned long) ; 
 int FUNC10 (struct ck_rhs*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ck_rhs_map*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct ck_rhs_map*,long,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct ck_rhs_map*,long) ; 
 int /*<<< orphan*/  FUNC14 (struct ck_rhs_map*,long) ; 
 long FUNC15 (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct ck_rhs *hs,
    long orig_slot, struct ck_rhs_entry_desc *desc)
{
	long slot, first;
	const void *object, *insert;
	unsigned long n_probes;
	struct ck_rhs_map *map;
	unsigned long h = 0;
	long prev;
	void *key;
	long prevs[CK_RHS_MAX_RH];
	unsigned int prevs_nb = 0;
	unsigned int i;

	map = hs->map;
	first = orig_slot;
	n_probes = desc->probes;
restart:
	key = FUNC0(FUNC7(map, first));
	insert = key;
#ifdef CK_RHS_PP
	if (hs->mode & CK_RHS_MODE_OBJECT)
	    key = CK_RHS_VMA(key);
#endif
	orig_slot = first;
	FUNC13(map, orig_slot);

	slot = map->probe_func(hs, map, &n_probes, &first, h, key, &object,
	    map->probe_limit, prevs_nb == CK_RHS_MAX_RH ?
	    CK_RHS_PROBE_NO_RH : CK_RHS_PROBE_ROBIN_HOOD);

	if (slot == -1 && first == -1) {
		if (FUNC10(hs, map->capacity << 1) == false) {
			desc->in_rh = false;

			for (i = 0; i < prevs_nb; i++)
				FUNC14(map, prevs[i]);

			return -1;
		}

		return 1;
	}

	if (first != -1) {
		desc = FUNC6(map, first);
		int old_probes = desc->probes;

		desc->probes = n_probes;
		h = FUNC9(map, first, n_probes);
		FUNC11(map, h, n_probes);
		prev = orig_slot;
		prevs[prevs_nb++] = prev;
		n_probes = old_probes;
		goto restart;
	} else {
		/* An empty slot was found. */
		h =  FUNC9(map, slot, n_probes);
		FUNC11(map, h, n_probes);
		FUNC4(FUNC8(map, slot), insert);
		FUNC3(&map->generation[h & CK_RHS_G_MASK]);
		FUNC2();
		FUNC12(map, slot, n_probes);
		desc->in_rh = 0;
		FUNC5(hs, slot, orig_slot, h);
	}
	while (prevs_nb > 0) {
		prev = prevs[--prevs_nb];
		FUNC4(FUNC8(map, orig_slot),
		    FUNC7(map, prev));
		h = FUNC9(map, orig_slot,
		    desc->probes);
		FUNC5(hs, orig_slot, prev, h);
		FUNC3(&map->generation[h & CK_RHS_G_MASK]);
		FUNC2();
		orig_slot = prev;
		desc->in_rh = false;
		desc = FUNC6(map, orig_slot);
	}
	return 0;
}