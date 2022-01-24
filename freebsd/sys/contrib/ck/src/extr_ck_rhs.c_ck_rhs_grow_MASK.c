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
struct ck_rhs_map {unsigned long capacity; unsigned long mask; int /*<<< orphan*/  n_entries; int /*<<< orphan*/  probe_limit; } ;
struct ck_rhs {int mode; unsigned long (* hf ) (void const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  m; struct ck_rhs_map* map; int /*<<< orphan*/  seed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 void const* CK_RHS_EMPTY ; 
 int CK_RHS_MODE_OBJECT ; 
 void* FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ck_rhs_map**,struct ck_rhs_map*) ; 
 void* FUNC4 (struct ck_rhs_map*,unsigned long) ; 
 void** FUNC5 (struct ck_rhs_map*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct ck_rhs_map*,unsigned long,unsigned long) ; 
 struct ck_rhs_map* FUNC7 (struct ck_rhs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ck_rhs_map*,int) ; 
 unsigned long FUNC9 (struct ck_rhs_map*,unsigned long,unsigned long) ; 
 unsigned long FUNC10 (struct ck_rhs_map*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct ck_rhs_map*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct ck_rhs_map*,unsigned long) ; 
 unsigned long FUNC13 (void const*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC14 (void const*,int /*<<< orphan*/ ) ; 

bool
FUNC15(struct ck_rhs *hs,
    unsigned long capacity)
{
	struct ck_rhs_map *map, *update;
	const void *previous, *prev_saved;
	unsigned long k, offset, probes;

restart:
	map = hs->map;
	if (map->capacity > capacity)
		return false;

	update = FUNC7(hs, capacity);
	if (update == NULL)
		return false;

	for (k = 0; k < map->capacity; k++) {
		unsigned long h;

		prev_saved = previous = FUNC4(map, k);
		if (previous == CK_RHS_EMPTY)
			continue;

#ifdef CK_RHS_PP
		if (hs->mode & CK_RHS_MODE_OBJECT)
			previous = CK_RHS_VMA(previous);
#endif

		h = hs->hf(previous, hs->seed);
		offset = h & update->mask;
		probes = 0;

		for (;;) {
			const void **cursor = FUNC5(update, offset);

			if (probes++ == update->probe_limit) {
				/*
				 * We have hit the probe limit, map needs to be even larger.
				 */
				FUNC8(hs->m, update, false);
				capacity <<= 1;
				goto restart;
			}

			if (FUNC0(*cursor == CK_RHS_EMPTY)) {
				*cursor = prev_saved;
				update->n_entries++;
				FUNC11(update, offset, probes);
				FUNC6(update, h, probes);
				break;
			} else if (FUNC10(update, offset) < probes) {
				const void *tmp = prev_saved;
				unsigned int old_probes;
				prev_saved = previous = *cursor;
#ifdef CK_RHS_PP
				if (hs->mode & CK_RHS_MODE_OBJECT)
					previous = CK_RHS_VMA(previous);
#endif
				*cursor = tmp;
				FUNC6(update, h, probes);
				h = hs->hf(previous, hs->seed);
				old_probes = FUNC10(update, offset);
				FUNC11(update, offset, probes);
				probes = old_probes - 1;
				continue;
			}
			FUNC12(update, offset);
			offset = FUNC9(update, offset,  probes);
		}

	}

	FUNC2();
	FUNC3(&hs->map, update);
	FUNC8(hs->m, map, true);
	return true;
}