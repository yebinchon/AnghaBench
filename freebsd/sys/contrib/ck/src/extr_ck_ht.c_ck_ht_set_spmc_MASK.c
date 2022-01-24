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
struct ck_ht_map {int capacity; int deletions; int n_entries; } ;
struct ck_ht_entry {scalar_t__ key; int key_length; int hash; scalar_t__ value; } ;
struct ck_ht {int mode; struct ck_ht_map* map; } ;
typedef  int /*<<< orphan*/  ck_ht_hash_t ;
typedef  struct ck_ht_entry ck_ht_entry_t ;
typedef  int /*<<< orphan*/  CK_HT_TYPE ;

/* Variables and functions */
 scalar_t__ CK_HT_KEY_EMPTY ; 
 scalar_t__ CK_HT_KEY_TOMBSTONE ; 
 int CK_HT_MODE_BYTESTRING ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 void* FUNC1 (struct ck_ht_entry*) ; 
 int FUNC2 (struct ck_ht_entry*) ; 
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
	bool empty = false;

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

		if (priority != NULL) {
			probes = probes_wr;
			break;
		}

		if (candidate != NULL)
			break;

		if (FUNC3(table, map->capacity << 1) == false)
			return false;
	}

	if (candidate == NULL) {
		candidate = priority;
		empty = true;
	}

	if (candidate->key != CK_HT_KEY_EMPTY &&
	    priority != NULL && candidate != priority) {
		/*
		 * Entry is moved into another position in probe sequence.
		 * We avoid a state of (K, B) (where [K, B] -> [K', B]) by
		 * guaranteeing a forced reprobe before transitioning from K to
		 * T. (K, B) implies (K, B, D') so we will reprobe successfully
		 * from this transient state.
		 */
		probes = probes_wr;

#ifndef CK_HT_PP
		FUNC0(&priority->key_length, entry->key_length);
		FUNC0(&priority->hash, entry->hash);
#endif

		/*
		 * Readers must observe version counter change before they
		 * observe re-use. If they observe re-use, it is at most
		 * a tombstone.
		 */
		if (priority->value == CK_HT_KEY_TOMBSTONE) {
			FUNC0(&map->deletions, map->deletions + 1);
			FUNC6();
		}

		FUNC7(&priority->value, (void *)entry->value);
		FUNC6();
		FUNC7(&priority->key, (void *)entry->key);
		FUNC6();

		/*
		 * Make sure that readers who observe the tombstone would
		 * also observe counter change.
		 */
		FUNC0(&map->deletions, map->deletions + 1);
		FUNC6();

		FUNC7(&candidate->key, (void *)CK_HT_KEY_TOMBSTONE);
		FUNC6();
	} else {
		/*
		 * In this case we are inserting a new entry or replacing
		 * an existing entry. Yes, this can be combined into above branch,
		 * but isn't because you are actually looking at dying code
		 * (ck_ht is effectively deprecated and is being replaced soon).
		 */
		bool replace = candidate->key != CK_HT_KEY_EMPTY &&
		    candidate->key != CK_HT_KEY_TOMBSTONE;

		if (priority != NULL) {
			if (priority->key == CK_HT_KEY_TOMBSTONE) {
				FUNC0(&map->deletions, map->deletions + 1);
				FUNC6();
			}

			candidate = priority;
			probes = probes_wr;
		}

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

		/*
		 * If we are insert a new entry then increment number
		 * of entries associated with map.
		 */
		if (replace == false)
			FUNC0(&map->n_entries, map->n_entries + 1);
	}

	FUNC4(map, h, probes);

	/* Enforce a load factor of 0.5. */
	if (map->n_entries * 2 > map->capacity)
		FUNC3(table, map->capacity << 1);

	if (empty == true) {
		entry->key = CK_HT_KEY_EMPTY;
	} else {
		*entry = snapshot;
	}

	return true;
}