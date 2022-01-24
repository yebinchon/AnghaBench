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
struct ck_rhs_map {long (* probe_func ) (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int capacity; scalar_t__ n_entries; scalar_t__ max_entries; int /*<<< orphan*/ * generation; int /*<<< orphan*/  probe_limit; } ;
struct ck_rhs_entry_desc {int in_rh; unsigned long probes; } ;
struct ck_rhs {int /*<<< orphan*/  mode; struct ck_rhs_map* map; } ;

/* Variables and functions */
 void* FUNC0 (void const*) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned long CK_RHS_G_MASK ; 
 int /*<<< orphan*/  CK_RHS_PROBE_INSERT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ck_rhs*,long,int,unsigned long) ; 
 struct ck_rhs_entry_desc* FUNC6 (struct ck_rhs_map*,long) ; 
 int /*<<< orphan*/  FUNC7 (struct ck_rhs*,long) ; 
 int /*<<< orphan*/  FUNC8 (struct ck_rhs_map*,long) ; 
 int FUNC9 (struct ck_rhs*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ck_rhs_map*,unsigned long,unsigned long) ; 
 void* FUNC11 (int /*<<< orphan*/ ,void const*,unsigned long) ; 
 int FUNC12 (struct ck_rhs*,long,struct ck_rhs_entry_desc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ck_rhs_map*,long,unsigned long) ; 
 long FUNC14 (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC15(struct ck_rhs *hs,
    unsigned long h,
    const void *key,
    void **previous)
{
	long slot, first;
	const void *object;
	const void *insert;
	unsigned long n_probes;
	struct ck_rhs_map *map;

	*previous = NULL;

restart:
	map = hs->map;

	slot = map->probe_func(hs, map, &n_probes, &first, h, key, &object, map->probe_limit, CK_RHS_PROBE_INSERT);
	if (slot == -1 && first == -1) {
		if (FUNC9(hs, map->capacity << 1) == false)
			return false;

		goto restart;
	}
	FUNC10(map, h, n_probes);
	insert = FUNC11(hs->mode, key, h);

	if (first != -1) {
		struct ck_rhs_entry_desc *desc = NULL, *desc2;
		if (slot != -1) {
			desc = FUNC6(map, slot);
			desc->in_rh = true;
		}
		desc2 = FUNC6(map, first);
		int ret = FUNC12(hs, first, desc2);
		if (slot != -1)
			desc->in_rh = false;

		if (FUNC1(ret == 1))
			goto restart;
		if (FUNC1(ret == -1))
			return false;
		/* If an earlier bucket was found, then store entry there. */
		FUNC4(FUNC8(map, first), insert);
		desc2->probes = n_probes;
		/*
		 * If a duplicate key was found, then delete it after
		 * signaling concurrent probes to restart. Optionally,
		 * it is possible to install tombstone after grace
		 * period if we can guarantee earlier position of
		 * duplicate key.
		 */
		FUNC5(hs, first, -1, h);
		if (object != NULL) {
			FUNC3(&map->generation[h & CK_RHS_G_MASK]);
			FUNC2();
			FUNC7(hs, slot);
		}

	} else {
		/*
		 * If we are storing into same slot, then atomic store is sufficient
		 * for replacement.
		 */
		FUNC4(FUNC8(map, slot), insert);
		FUNC13(map, slot, n_probes);
		if (object == NULL)
			FUNC5(hs, slot, -1, h);
	}

	if (object == NULL) {
		map->n_entries++;
		if ((map->n_entries ) > map->max_entries)
			FUNC9(hs, map->capacity << 1);
	}

	*previous = FUNC0(object);
	return true;
}