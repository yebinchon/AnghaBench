#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ck_ht_map {int capacity; int deletions; int n_entries; } ;
struct ck_ht_entry {scalar_t__ key; scalar_t__ value; int key_length; int hash; } ;
struct ck_ht {int mode; struct ck_ht_map* map; } ;
typedef  int /*<<< orphan*/  ck_ht_hash_t ;
struct TYPE_5__ {int key_length; int hash; scalar_t__ key; scalar_t__ value; } ;
typedef  TYPE_1__ ck_ht_entry_t ;
typedef  int /*<<< orphan*/  CK_HT_TYPE ;

/* Variables and functions */
 scalar_t__ CK_HT_KEY_EMPTY ; 
 scalar_t__ CK_HT_KEY_TOMBSTONE ; 
 int CK_HT_MODE_BYTESTRING ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 void* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct ck_ht*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ck_ht_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ck_ht_entry* FUNC5 (struct ck_ht_map*,int /*<<< orphan*/ ,struct ck_ht_entry*,struct ck_ht_entry**,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,void*) ; 

bool
FUNC8(struct ck_ht *table,
    ck_ht_hash_t h,
    ck_ht_entry_t *entry)
{
	struct ck_ht_entry snapshot, *candidate, *priority;
	struct ck_ht_map *map;
	CK_HT_TYPE probes, probes_wr;

	for (;;) {
		map = table->map;

		if (table->mode & CK_HT_MODE_BYTESTRING) {
			candidate = FUNC5(map, h, &snapshot, &priority,
			    FUNC1(entry),
			    FUNC2(entry),
			    &probes, &probes_wr);
		} else {
			candidate = FUNC5(map, h, &snapshot, &priority,
			    (void *)entry->key,
			    sizeof(entry->key),
			    &probes, &probes_wr);
		}

		if (candidate != NULL || priority != NULL)
			break;

		if (FUNC3(table, map->capacity << 1) == false)
			return false;
	}

	if (priority != NULL) {
		/* Version counter is updated before re-use. */
		FUNC0(&map->deletions, map->deletions + 1);
		FUNC6();

		/* Re-use tombstone if one was found. */
		candidate = priority;
		probes = probes_wr;
	} else if (candidate->key != CK_HT_KEY_EMPTY &&
	    candidate->key != CK_HT_KEY_TOMBSTONE) {
		/*
		 * If the snapshot key is non-empty and the value field is not
		 * a tombstone then an identical key was found. As store does
		 * not implement replacement, we will fail.
		 */
		return false;
	}

	FUNC4(map, h, probes);

#ifdef CK_HT_PP
	ck_pr_store_ptr_unsafe(&candidate->value, (void *)entry->value);
	ck_pr_fence_store();
	ck_pr_store_ptr_unsafe(&candidate->key, (void *)entry->key);
#else
	FUNC0(&candidate->key_length, entry->key_length);
	FUNC0(&candidate->hash, entry->hash);
	FUNC7(&candidate->value, (void *)entry->value);
	FUNC6();
	FUNC7(&candidate->key, (void *)entry->key);
#endif

	FUNC0(&map->n_entries, map->n_entries + 1);

	/* Enforce a load factor of 0.5. */
	if (map->n_entries * 2 > map->capacity)
		FUNC3(table, map->capacity << 1);

	return true;
}