#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ck_hs_map {scalar_t__ n_entries; unsigned int probe_maximum; unsigned long* probe_bound; int capacity; void** entries; unsigned long mask; } ;
struct ck_hs {int mode; unsigned long (* hf ) (void const*,int /*<<< orphan*/ ) ;TYPE_1__* m; int /*<<< orphan*/  seed; struct ck_hs_map* map; } ;
struct TYPE_2__ {unsigned long* (* malloc ) (unsigned long) ;int /*<<< orphan*/  (* free ) (unsigned long*,unsigned long,int) ;} ;
typedef  unsigned long CK_HS_WORD ;

/* Variables and functions */
 void const* CK_HS_EMPTY ; 
 int CK_HS_MODE_OBJECT ; 
 int /*<<< orphan*/  CK_HS_PROBE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,unsigned long) ; 
 void const* CK_HS_TOMBSTONE ; 
 void* FUNC1 (void const*) ; 
 unsigned long CK_HS_WORD_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct ck_hs_map*,unsigned long) ; 
 void** FUNC3 (struct ck_hs*,struct ck_hs_map*,unsigned long*,void const***,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ck_hs_map*,unsigned long) ; 
 void* FUNC5 (int,void const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void const**,void const*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long* FUNC9 (unsigned long) ; 
 unsigned long FUNC10 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long*,unsigned long,int) ; 

bool
FUNC12(struct ck_hs *hs, unsigned long cycles, unsigned long seed)
{
	unsigned long size = 0;
	unsigned long i;
	struct ck_hs_map *map = hs->map;
	unsigned int maximum;
	CK_HS_WORD *bounds = NULL;

	if (map->n_entries == 0) {
		FUNC7(&map->probe_maximum, 0);
		if (map->probe_bound != NULL)
			FUNC8(map->probe_bound, 0, sizeof(CK_HS_WORD) * map->capacity);

		return true;
	}

	if (cycles == 0) {
		maximum = 0;

		if (map->probe_bound != NULL) {
			size = sizeof(CK_HS_WORD) * map->capacity;
			bounds = hs->m->malloc(size);
			if (bounds == NULL)
				return false;

			FUNC8(bounds, 0, size);
		}
	} else {
		maximum = map->probe_maximum;
	}

	for (i = 0; i < map->capacity; i++) {
		const void **first, *object, **slot, *entry;
		unsigned long n_probes, offset, h;

		entry = map->entries[(i + seed) & map->mask];
		if (entry == CK_HS_EMPTY || entry == CK_HS_TOMBSTONE)
			continue;

#ifdef CK_HS_PP
		if (hs->mode & CK_HS_MODE_OBJECT)
			entry = CK_HS_VMA(entry);
#endif

		h = hs->hf(entry, hs->seed);
		offset = h & map->mask;

		slot = FUNC3(hs, map, &n_probes, &first, h, entry, &object,
		    FUNC2(map, h), CK_HS_PROBE);

		if (first != NULL) {
			const void *insert = FUNC5(hs->mode, entry, h);

			FUNC6(first, insert);
			FUNC4(map, h);
			FUNC6(slot, CK_HS_TOMBSTONE);
		}

		if (cycles == 0) {
			if (n_probes > maximum)
				maximum = n_probes;

			if (n_probes > CK_HS_WORD_MAX)
				n_probes = CK_HS_WORD_MAX;

			if (bounds != NULL && n_probes > bounds[offset])
				bounds[offset] = n_probes;
		} else if (--cycles == 0)
			break;
	}

	/*
	 * The following only apply to garbage collection involving
	 * a full scan of all entries.
	 */
	if (maximum != map->probe_maximum)
		FUNC7(&map->probe_maximum, maximum);

	if (bounds != NULL) {
		for (i = 0; i < map->capacity; i++)
			FUNC0(&map->probe_bound[i], bounds[i]);

		hs->m->free(bounds, size, false);
	}

	return true;
}