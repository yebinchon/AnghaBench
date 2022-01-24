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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct pt_section {int dummy; } ;
struct pt_iscache_entry {struct pt_section* section; int /*<<< orphan*/  laddr; } ;
struct pt_image_section_cache {int size; struct pt_iscache_entry* entries; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pt_image_section_cache*,struct pt_section*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pt_image_section_cache*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pt_image_section_cache*) ; 
 int FUNC4 (struct pt_image_section_cache*) ; 
 int FUNC5 (struct pt_section**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pt_section*) ; 
 int FUNC7 (struct pt_section*) ; 
 int pte_invalid ; 

int FUNC8(struct pt_image_section_cache *iscache,
			const char *filename, uint64_t offset, uint64_t size,
			uint64_t vaddr)
{
	struct pt_section *section;
	int errcode, match, isid;

	if (!iscache || !filename)
		return -pte_invalid;

	errcode = FUNC3(iscache);
	if (errcode < 0)
		return errcode;

	match = FUNC2(iscache, filename, offset,
					       size, vaddr);
	if (match < 0) {
		(void) FUNC4(iscache);
		return match;
	}

	/* If we found a perfect match, we will share the existing entry.
	 *
	 * If we found a section, we need to grab a reference before we unlock.
	 *
	 * If we didn't find a matching section, we create a new section, which
	 * implicitly gives us a reference to it.
	 */
	if (match < iscache->size) {
		const struct pt_iscache_entry *entry;

		entry = &iscache->entries[match];
		if (entry->laddr == vaddr) {
			errcode = FUNC4(iscache);
			if (errcode < 0)
				return errcode;

			return FUNC0((uint16_t) match);
		}

		section = entry->section;

		errcode = FUNC6(section);
		if (errcode < 0) {
			(void) FUNC4(iscache);
			return errcode;
		}

		errcode = FUNC4(iscache);
		if (errcode < 0) {
			(void) FUNC7(section);
			return errcode;
		}
	} else {
		errcode = FUNC4(iscache);
		if (errcode < 0)
			return errcode;

		section = NULL;
		errcode = FUNC5(&section, filename, offset, size);
		if (errcode < 0)
			return errcode;
	}

	/* We unlocked @iscache and hold a reference to @section. */
	isid = FUNC1(iscache, section, vaddr);

	/* We grab a reference when we add the section.  Drop the one we
	 * obtained before.
	 */
	errcode = FUNC7(section);
	if (errcode < 0)
		return errcode;

	return isid;
}