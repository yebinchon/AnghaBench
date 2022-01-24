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
struct ck_hs_map {int capacity; int /*<<< orphan*/  probe_limit; } ;
struct ck_hs {int /*<<< orphan*/  mode; struct ck_hs_map* map; } ;

/* Variables and functions */
 void* FUNC0 (void const*) ; 
 int /*<<< orphan*/  CK_HS_PROBE_INSERT ; 
 void const* CK_HS_TOMBSTONE ; 
 int FUNC1 (struct ck_hs*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ck_hs_map*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ck_hs*,struct ck_hs_map*) ; 
 void** FUNC4 (struct ck_hs*,struct ck_hs_map*,unsigned long*,void const***,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ck_hs_map*,unsigned long) ; 
 void* FUNC6 (int /*<<< orphan*/ ,void const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (void const**,void const*) ; 

bool
FUNC8(struct ck_hs *hs,
    unsigned long h,
    const void *key,
    void **previous)
{
	const void **slot, **first, *object, *insert;
	unsigned long n_probes;
	struct ck_hs_map *map;

	*previous = NULL;

restart:
	map = hs->map;

	slot = FUNC4(hs, map, &n_probes, &first, h, key, &object, map->probe_limit, CK_HS_PROBE_INSERT);
	if (slot == NULL && first == NULL) {
		if (FUNC1(hs, map->capacity << 1) == false)
			return false;

		goto restart;
	}

	FUNC2(map, h, n_probes);
	insert = FUNC6(hs->mode, key, h);

	if (first != NULL) {
		/* If an earlier bucket was found, then store entry there. */
		FUNC7(first, insert);

		/*
		 * If a duplicate key was found, then delete it after
		 * signaling concurrent probes to restart. Optionally,
		 * it is possible to install tombstone after grace
		 * period if we can guarantee earlier position of
		 * duplicate key.
		 */
		if (object != NULL) {
			FUNC5(map, h);
			FUNC7(slot, CK_HS_TOMBSTONE);
		}
	} else {
		/*
		 * If we are storing into same slot, then atomic store is sufficient
		 * for replacement.
		 */
		FUNC7(slot, insert);
	}

	if (object == NULL)
		FUNC3(hs, map);

	*previous = FUNC0(object);
	return true;
}