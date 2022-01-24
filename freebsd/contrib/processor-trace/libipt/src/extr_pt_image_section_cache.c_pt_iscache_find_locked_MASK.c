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
typedef  scalar_t__ uint64_t ;
typedef  size_t uint16_t ;
struct pt_section {int dummy; } ;
struct pt_iscache_entry {scalar_t__ laddr; struct pt_section* section; } ;
struct pt_image_section_cache {size_t size; struct pt_iscache_entry* entries; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 char* FUNC1 (struct pt_section const*) ; 
 scalar_t__ FUNC2 (struct pt_section const*) ; 
 scalar_t__ FUNC3 (struct pt_section const*) ; 
 int pte_internal ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

__attribute__((used)) static int FUNC5(struct pt_image_section_cache *iscache,
				  const char *filename, uint64_t offset,
				  uint64_t size, uint64_t laddr)
{
	uint16_t idx, end;

	if (!iscache || !filename)
		return -pte_internal;

	end = iscache->size;
	for (idx = 0; idx < end; ++idx) {
		const struct pt_iscache_entry *entry;
		const struct pt_section *section;
		const char *sec_filename;
		uint64_t sec_offset, sec_size;

		entry = &iscache->entries[idx];

		/* We do not zero-initialize the array - a NULL check is
		 * pointless.
		 */
		section = entry->section;
		sec_filename = FUNC1(section);
		sec_offset = FUNC2(section);
		sec_size = FUNC3(section);

		if (entry->laddr != laddr)
			continue;

		if (sec_offset != offset)
			continue;

		if (sec_size != size)
			continue;

		/* We should not have a section without a filename. */
		if (!sec_filename)
			return -pte_internal;

		if (FUNC4(sec_filename, filename) != 0)
			continue;

		return FUNC0(idx);
	}

	return 0;
}