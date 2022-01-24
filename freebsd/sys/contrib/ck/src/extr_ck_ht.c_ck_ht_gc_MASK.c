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
struct ck_ht_map {scalar_t__ n_entries; unsigned long probe_maximum; unsigned long* probe_bound; int capacity; unsigned long mask; unsigned long deletions; struct ck_ht_entry* entries; } ;
struct ck_ht_hash {unsigned long value; } ;
struct ck_ht_entry {scalar_t__ key; unsigned long hash; unsigned long key_length; scalar_t__ value; } ;
struct ck_ht {int mode; TYPE_1__* m; int /*<<< orphan*/  seed; int /*<<< orphan*/  (* h ) (struct ck_ht_hash*,scalar_t__*,int,int /*<<< orphan*/ ) ;struct ck_ht_map* map; } ;
struct TYPE_2__ {unsigned long* (* malloc ) (unsigned long) ;int /*<<< orphan*/  (* free ) (unsigned long*,unsigned long,int) ;} ;
typedef  unsigned long CK_HT_WORD ;
typedef  unsigned long CK_HT_TYPE ;

/* Variables and functions */
 scalar_t__ CK_HT_KEY_EMPTY ; 
 scalar_t__ CK_HT_KEY_TOMBSTONE ; 
 int CK_HT_MODE_BYTESTRING ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned long) ; 
 unsigned long CK_HT_WORD_MAX ; 
 void* FUNC2 (struct ck_ht_entry*) ; 
 int FUNC3 (struct ck_ht_entry*) ; 
 struct ck_ht_entry* FUNC4 (struct ck_ht_map*,struct ck_ht_hash,struct ck_ht_entry*,struct ck_ht_entry**,void*,int,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,void*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long* FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct ck_ht_hash*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ck_ht_hash*,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long*,unsigned long,int) ; 

bool
FUNC12(struct ck_ht *ht, unsigned long cycles, unsigned long seed)
{
	CK_HT_WORD *bounds = NULL;
	struct ck_ht_map *map = ht->map;
	CK_HT_TYPE maximum, i;
	CK_HT_TYPE size = 0;

	if (map->n_entries == 0) {
		FUNC1(&map->probe_maximum, 0);
		if (map->probe_bound != NULL)
			FUNC7(map->probe_bound, 0, sizeof(CK_HT_WORD) * map->capacity);

		return true;
	}

	if (cycles == 0) {
		maximum = 0;

		if (map->probe_bound != NULL) {
			size = sizeof(CK_HT_WORD) * map->capacity;
			bounds = ht->m->malloc(size);
			if (bounds == NULL)
				return false;

			FUNC7(bounds, 0, size);
		}
	} else {
		maximum = map->probe_maximum;
	}

	for (i = 0; i < map->capacity; i++) {
		struct ck_ht_entry *entry, *priority, snapshot;
		struct ck_ht_hash h;
		CK_HT_TYPE probes_wr;
		CK_HT_TYPE offset;

		entry = &map->entries[(i + seed) & map->mask];
		if (entry->key == CK_HT_KEY_EMPTY ||
		    entry->key == CK_HT_KEY_TOMBSTONE) {
			continue;
		}

		if (ht->mode & CK_HT_MODE_BYTESTRING) {
#ifndef CK_HT_PP
			h.value = entry->hash;
#else
			ht->h(&h, ck_ht_entry_key(entry), ck_ht_entry_key_length(entry),
			    ht->seed);
#endif
			entry = FUNC4(map, h, &snapshot, &priority,
			    FUNC2(entry),
			    FUNC3(entry),
			    NULL, &probes_wr);
		} else {
#ifndef CK_HT_PP
			h.value = entry->hash;
#else
			ht->h(&h, &entry->key, sizeof(entry->key), ht->seed);
#endif
			entry = FUNC4(map, h, &snapshot, &priority,
			    (void *)entry->key,
			    sizeof(entry->key),
			    NULL, &probes_wr);
		}

		offset = h.value & map->mask;

		if (priority != NULL) {
			FUNC1(&map->deletions, map->deletions + 1);
			FUNC5();
#ifndef CK_HT_PP
			FUNC1(&priority->key_length, entry->key_length);
			FUNC1(&priority->hash, entry->hash);
#endif
			FUNC6(&priority->value, (void *)entry->value);
			FUNC5();
			FUNC6(&priority->key, (void *)entry->key);
			FUNC5();
			FUNC1(&map->deletions, map->deletions + 1);
			FUNC5();
			FUNC6(&entry->key, (void *)CK_HT_KEY_TOMBSTONE);
			FUNC5();
		}

		if (cycles == 0) {
			if (probes_wr > maximum)
				maximum = probes_wr;

			if (probes_wr >= CK_HT_WORD_MAX)
				probes_wr = CK_HT_WORD_MAX;

			if (bounds != NULL && probes_wr > bounds[offset])
				bounds[offset] = probes_wr;
		} else if (--cycles == 0)
			break;
	}

	if (maximum != map->probe_maximum)
		FUNC1(&map->probe_maximum, maximum);

	if (bounds != NULL) {
		for (i = 0; i < map->capacity; i++)
			FUNC0(&map->probe_bound[i], bounds[i]);

		ht->m->free(bounds, size, false);
	}

	return true;
}