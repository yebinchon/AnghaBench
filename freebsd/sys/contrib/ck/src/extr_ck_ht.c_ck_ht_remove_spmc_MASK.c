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
struct ck_ht_map {scalar_t__ n_entries; } ;
struct ck_ht_entry {scalar_t__ key; } ;
struct ck_ht {int mode; struct ck_ht_map* map; } ;
typedef  int /*<<< orphan*/  ck_ht_hash_t ;
typedef  struct ck_ht_entry ck_ht_entry_t ;

/* Variables and functions */
 scalar_t__ CK_HT_KEY_EMPTY ; 
 scalar_t__ CK_HT_KEY_TOMBSTONE ; 
 int CK_HT_MODE_BYTESTRING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__) ; 
 void* FUNC1 (struct ck_ht_entry*) ; 
 int FUNC2 (struct ck_ht_entry*) ; 
 struct ck_ht_entry* FUNC3 (struct ck_ht_map*,int /*<<< orphan*/ ,struct ck_ht_entry*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,void*) ; 

bool
FUNC6(struct ck_ht *table,
    ck_ht_hash_t h,
    ck_ht_entry_t *entry)
{
	struct ck_ht_map *map;
	struct ck_ht_entry *candidate, snapshot;

	map = table->map;

	if (table->mode & CK_HT_MODE_BYTESTRING) {
		candidate = FUNC3(map, h, &snapshot,
		    FUNC1(entry),
		    FUNC2(entry));
	} else {
		candidate = FUNC3(map, h, &snapshot,
		    (void *)entry->key,
		    sizeof(entry->key));
	}

	/* No matching entry was found. */
	if (candidate == NULL || snapshot.key == CK_HT_KEY_EMPTY)
		return false;

	*entry = snapshot;

	FUNC5(&candidate->key, (void *)CK_HT_KEY_TOMBSTONE);
	FUNC4();
	FUNC0(&map->n_entries, map->n_entries - 1);
	return true;
}