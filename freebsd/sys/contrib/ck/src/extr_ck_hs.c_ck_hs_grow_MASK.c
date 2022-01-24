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
struct ck_hs_map {unsigned long capacity; void** entries; unsigned long mask; unsigned long probe_limit; int /*<<< orphan*/  n_entries; } ;
struct ck_hs {int mode; unsigned long (* hf ) (void const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  m; struct ck_hs_map* map; int /*<<< orphan*/  seed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 void const* CK_HS_EMPTY ; 
 int CK_HS_MODE_OBJECT ; 
 unsigned long CK_HS_PROBE_L1 ; 
 void const* CK_HS_TOMBSTONE ; 
 void* FUNC1 (void const*) ; 
 int CK_MD_CACHELINE ; 
 int /*<<< orphan*/  FUNC2 (struct ck_hs_map*,unsigned long,unsigned long) ; 
 struct ck_hs_map* FUNC3 (struct ck_hs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ck_hs_map*,int) ; 
 unsigned long FUNC5 (struct ck_hs_map*,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ck_hs_map**,struct ck_hs_map*) ; 
 unsigned long FUNC8 (void const*,int /*<<< orphan*/ ) ; 

bool
FUNC9(struct ck_hs *hs,
    unsigned long capacity)
{
	struct ck_hs_map *map, *update;
	unsigned long k, i, j, offset, probes;
	const void *previous, **bucket;

restart:
	map = hs->map;
	if (map->capacity > capacity)
		return false;

	update = FUNC3(hs, capacity);
	if (update == NULL)
		return false;

	for (k = 0; k < map->capacity; k++) {
		unsigned long h;

		previous = map->entries[k];
		if (previous == CK_HS_EMPTY || previous == CK_HS_TOMBSTONE)
			continue;

#ifdef CK_HS_PP
		if (hs->mode & CK_HS_MODE_OBJECT)
			previous = CK_HS_VMA(previous);
#endif

		h = hs->hf(previous, hs->seed);
		offset = h & update->mask;
		i = probes = 0;

		for (;;) {
			bucket = (const void **)((uintptr_t)&update->entries[offset] & ~(CK_MD_CACHELINE - 1));

			for (j = 0; j < CK_HS_PROBE_L1; j++) {
				const void **cursor = bucket + ((j + offset) & (CK_HS_PROBE_L1 - 1));

				if (probes++ == update->probe_limit)
					break;

				if (FUNC0(*cursor == CK_HS_EMPTY)) {
					*cursor = map->entries[k];
					update->n_entries++;

					FUNC2(update, h, probes);
					break;
				}
			}

			if (j < CK_HS_PROBE_L1)
				break;

			offset = FUNC5(update, offset, h, i++, probes);
		}

		if (probes > update->probe_limit) {
			/*
			 * We have hit the probe limit, map needs to be even larger.
			 */
			FUNC4(hs->m, update, false);
			capacity <<= 1;
			goto restart;
		}
	}

	FUNC6();
	FUNC7(&hs->map, update);
	FUNC4(hs->m, map, true);
	return true;
}