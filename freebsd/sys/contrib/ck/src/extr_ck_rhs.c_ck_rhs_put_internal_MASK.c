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
struct ck_rhs_map {long (* probe_func ) (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int) ;int capacity; scalar_t__ n_entries; scalar_t__ max_entries; int /*<<< orphan*/  probe_limit; } ;
struct ck_rhs_entry_desc {unsigned long probes; } ;
struct ck_rhs {int /*<<< orphan*/  mode; struct ck_rhs_map* map; } ;
typedef  enum ck_rhs_probe_behavior { ____Placeholder_ck_rhs_probe_behavior } ck_rhs_probe_behavior ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ck_rhs*,long,int,unsigned long) ; 
 struct ck_rhs_entry_desc* FUNC3 (struct ck_rhs_map*,long) ; 
 int /*<<< orphan*/  FUNC4 (struct ck_rhs_map*,long) ; 
 int FUNC5 (struct ck_rhs*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ck_rhs_map*,unsigned long,unsigned long) ; 
 void* FUNC7 (int /*<<< orphan*/ ,void const*,unsigned long) ; 
 int FUNC8 (struct ck_rhs*,long,struct ck_rhs_entry_desc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ck_rhs_map*,long,unsigned long) ; 
 long FUNC10 (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC11(struct ck_rhs *hs,
    unsigned long h,
    const void *key,
    enum ck_rhs_probe_behavior behavior)
{
	long slot, first;
	const void *object;
	const void *insert;
	unsigned long n_probes;
	struct ck_rhs_map *map;

restart:
	map = hs->map;

	slot = map->probe_func(hs, map, &n_probes, &first, h, key, &object,
	    map->probe_limit, behavior);

	if (slot == -1 && first == -1) {
		if (FUNC5(hs, map->capacity << 1) == false)
			return false;

		goto restart;
	}

	/* Fail operation if a match was found. */
	if (object != NULL)
		return false;

	FUNC6(map, h, n_probes);
	insert = FUNC7(hs->mode, key, h);

	if (first != -1) {
		struct ck_rhs_entry_desc *desc = FUNC3(map, first);
		int ret = FUNC8(hs, first, desc);
		if (FUNC0(ret == 1))
			return FUNC11(hs, h, key, behavior);
		else if (FUNC0(ret == -1))
			return false;
		/* Insert key into first bucket in probe sequence. */
		FUNC1(FUNC4(map, first), insert);
		desc->probes = n_probes;
		FUNC2(hs, first, -1, h);
	} else {
		/* An empty slot was found. */
		FUNC1(FUNC4(map, slot), insert);
		FUNC9(map, slot, n_probes);
		FUNC2(hs, slot, -1, h);
	}

	map->n_entries++;
	if ((map->n_entries ) > map->max_entries)
		FUNC5(hs, map->capacity << 1);
	return true;
}