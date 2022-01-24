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
typedef  size_t uint16_t ;
struct pt_section {int dummy; } ;
struct pt_iscache_lru_entry {int dummy; } ;
struct pt_iscache_entry {struct pt_section* section; } ;
struct pt_image_section_cache {size_t size; unsigned long long used; struct pt_iscache_lru_entry* lru; scalar_t__ capacity; struct pt_iscache_entry* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_iscache_entry*) ; 
 int FUNC1 (struct pt_image_section_cache*) ; 
 int FUNC2 (struct pt_iscache_lru_entry*) ; 
 int FUNC3 (struct pt_image_section_cache*) ; 
 int FUNC4 (struct pt_section*,struct pt_image_section_cache*) ; 
 int FUNC5 (struct pt_section*) ; 
 int pte_internal ; 

int FUNC6(struct pt_image_section_cache *iscache)
{
	struct pt_iscache_lru_entry *lru;
	struct pt_iscache_entry *entries;
	uint16_t idx, end;
	int errcode;

	if (!iscache)
		return -pte_internal;

	errcode = FUNC1(iscache);
	if (errcode < 0)
		return errcode;

	entries = iscache->entries;
	end = iscache->size;
	lru = iscache->lru;

	iscache->entries = NULL;
	iscache->capacity = 0;
	iscache->size = 0;
	iscache->lru = NULL;
	iscache->used = 0ull;

	errcode = FUNC3(iscache);
	if (errcode < 0)
		return errcode;

	errcode = FUNC2(lru);
	if (errcode < 0)
		return errcode;

	for (idx = 0; idx < end; ++idx) {
		struct pt_section *section;

		section = entries[idx].section;

		/* We do not zero-initialize the array - a NULL check is
		 * pointless.
		 */
		errcode = FUNC4(section, iscache);
		if (errcode < 0)
			return errcode;

		errcode = FUNC5(section);
		if (errcode < 0)
			return errcode;
	}

	FUNC0(entries);
	return 0;
}