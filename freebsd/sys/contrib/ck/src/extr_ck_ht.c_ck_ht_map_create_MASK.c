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
typedef  int uint32_t ;
struct ck_ht_map {int mode; int size; int capacity; int mask; struct ck_ht_entry* entries; struct ck_ht_entry* probe_bound; scalar_t__ n_entries; int /*<<< orphan*/  step; scalar_t__ probe_maximum; scalar_t__ deletions; int /*<<< orphan*/  probe_limit; } ;
struct ck_ht_entry {int dummy; } ;
struct ck_ht {int mode; TYPE_1__* m; } ;
struct TYPE_2__ {struct ck_ht_map* (* malloc ) (int) ;} ;
typedef  struct ck_ht_entry CK_HT_WORD ;
typedef  int CK_HT_TYPE ;

/* Variables and functions */
 int CK_HT_BUCKET_LENGTH ; 
 int CK_HT_BUCKET_SHIFT ; 
 int /*<<< orphan*/  CK_HT_PROBE_DEFAULT ; 
 int CK_HT_WORKLOAD_DELETE ; 
 int CK_MD_CACHELINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ck_ht_entry*,int /*<<< orphan*/ ,int) ; 
 struct ck_ht_map* FUNC5 (int) ; 

__attribute__((used)) static struct ck_ht_map *
FUNC6(struct ck_ht *table, CK_HT_TYPE entries)
{
	struct ck_ht_map *map;
	CK_HT_TYPE size;
	uintptr_t prefix;
	uint32_t n_entries;

	n_entries = FUNC2(entries);
	if (n_entries < CK_HT_BUCKET_LENGTH)
		n_entries = CK_HT_BUCKET_LENGTH;

	size = sizeof(struct ck_ht_map) +
		   (sizeof(struct ck_ht_entry) * n_entries + CK_MD_CACHELINE - 1);

	if (table->mode & CK_HT_WORKLOAD_DELETE) {
		prefix = sizeof(CK_HT_WORD) * n_entries;
		size += prefix;
	} else {
		prefix = 0;
	}

	map = table->m->malloc(size);
	if (map == NULL)
		return NULL;

	map->mode = table->mode;
	map->size = size;
	map->probe_limit = FUNC1(n_entries >>
	    (CK_HT_BUCKET_SHIFT + 2), CK_HT_PROBE_DEFAULT);

	map->deletions = 0;
	map->probe_maximum = 0;
	map->capacity = n_entries;
	map->step = FUNC0(map->capacity);
	map->mask = map->capacity - 1;
	map->n_entries = 0;
	map->entries = (struct ck_ht_entry *)(((uintptr_t)&map[1] + prefix +
	    CK_MD_CACHELINE - 1) & ~(CK_MD_CACHELINE - 1));

	if (table->mode & CK_HT_WORKLOAD_DELETE) {
		map->probe_bound = (CK_HT_WORD *)&map[1];
		FUNC4(map->probe_bound, 0, prefix);
	} else {
		map->probe_bound = NULL;
	}

	FUNC4(map->entries, 0, sizeof(struct ck_ht_entry) * n_entries);
	FUNC3();
	return map;
}