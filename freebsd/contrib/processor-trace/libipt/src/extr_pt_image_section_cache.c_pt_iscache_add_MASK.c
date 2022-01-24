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
typedef  size_t uint16_t ;
struct pt_section {int dummy; } ;
struct pt_iscache_entry {int /*<<< orphan*/  laddr; struct pt_section* section; } ;
struct pt_image_section_cache {int size; scalar_t__ capacity; struct pt_iscache_entry* entries; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int FUNC1 (struct pt_image_section_cache*) ; 
 int FUNC2 (struct pt_image_section_cache*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pt_image_section_cache*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_image_section_cache*) ; 
 int FUNC5 (struct pt_image_section_cache*,struct pt_section*) ; 
 int FUNC6 (struct pt_image_section_cache*) ; 
 int FUNC7 (struct pt_section*,struct pt_image_section_cache*) ; 
 int FUNC8 (struct pt_section*,struct pt_image_section_cache*) ; 
 char* FUNC9 (struct pt_section*) ; 
 int FUNC10 (struct pt_section*) ; 
 int /*<<< orphan*/  FUNC11 (struct pt_section*) ; 
 int FUNC12 (struct pt_section*) ; 
 int /*<<< orphan*/  FUNC13 (struct pt_section*) ; 
 int pte_internal ; 

int FUNC14(struct pt_image_section_cache *iscache,
		   struct pt_section *section, uint64_t laddr)
{
	const char *filename;
	uint64_t offset, size;
	uint16_t idx;
	int errcode;

	if (!iscache || !section)
		return -pte_internal;

	/* We must have a filename for @section. */
	filename = FUNC9(section);
	if (!filename)
		return -pte_internal;

	offset = FUNC11(section);
	size = FUNC13(section);

	/* Adding a section is slightly complicated by a potential deadlock
	 * scenario:
	 *
	 *   - in order to add a section, we need to attach to it, which
	 *     requires taking the section's attach lock.
	 *
	 *   - if we are already attached to it, we may receive on-map
	 *     notifications, which will be sent while holding the attach lock
	 *     and require taking the iscache lock.
	 *
	 * Hence we can't attach to a section while holding the iscache lock.
	 *
	 *
	 * We therefore attach to @section first and then lock @iscache.
	 *
	 * This opens a small window where an existing @section may be removed
	 * from @iscache and replaced by a new matching section.  We would want
	 * to share that new section rather than adding a duplicate @section.
	 *
	 * After locking @iscache, we therefore check for existing matching
	 * sections and, if one is found, update @section.  This involves
	 * detaching from @section and attaching to the existing section.
	 *
	 * And for this, we will have to temporarily unlock @iscache again.
	 */
	errcode = FUNC10(section);
	if (errcode < 0)
		return errcode;

	errcode = FUNC7(section, iscache);
	if (errcode < 0)
		goto out_put;

	errcode = FUNC3(iscache);
	if (errcode < 0)
		goto out_detach;

	/* We may need to repeat this step.
	 *
	 * Typically we don't and this takes only a single iteration.  One
	 * scenario where we do repeat this is when adding a section with an
	 * out-of-bounds size.
	 *
	 * We will not find a matching section in pt_iscache_add_file() so we
	 * create a new section.  This will have its size reduced to match the
	 * actual file size.
	 *
	 * For this reduced size, we may now find an existing section, and we
	 * will take another trip in the below loop.
	 */
	for (;;) {
		const struct pt_iscache_entry *entry;
		struct pt_section *sec;
		int match;

		/* Find an existing section matching @section that we'd share
		 * rather than adding @section.
		 */
		match = FUNC2(iscache, filename,
						       offset, size, laddr);
		if (match < 0) {
			errcode = match;
			goto out_unlock_detach;
		}

		/* We're done if we have not found a matching section. */
		if (iscache->size <= match)
			break;

		entry = &iscache->entries[match];

		/* We're also done if we found the same section again.
		 *
		 * We further check for a perfect match.  In that case, we don't
		 * need to insert anything, at all.
		 */
		sec = entry->section;
		if (sec == section) {
			if (entry->laddr == laddr) {
				errcode = FUNC6(iscache);
				if (errcode < 0)
					goto out_detach;

				errcode = FUNC8(section, iscache);
				if (errcode < 0)
					goto out_lru;

				errcode = FUNC12(section);
				if (errcode < 0)
					return errcode;

				return FUNC0((uint16_t) match);
			}

			break;
		}

		/* We update @section to share the existing @sec.
		 *
		 * This requires detaching from @section, which, in turn,
		 * requires temporarily unlocking @iscache.
		 *
		 * We further need to remove @section from @iscache->lru.
		 */
		errcode = FUNC10(sec);
		if (errcode < 0)
			goto out_unlock_detach;

		errcode = FUNC6(iscache);
		if (errcode < 0) {
			(void) FUNC12(sec);
			goto out_detach;
		}

		errcode = FUNC8(section, iscache);
		if (errcode < 0) {
			(void) FUNC12(sec);
			goto out_lru;
		}

		errcode = FUNC7(sec, iscache);
		if (errcode < 0) {
			(void) FUNC12(sec);
			goto out_lru;
		}

		errcode = FUNC3(iscache);
		if (errcode < 0) {
			(void) FUNC12(section);
			/* Complete the swap for cleanup. */
			section = sec;
			goto out_detach;
		}

		/* We may have received on-map notifications for @section and we
		 * may have added @section to @iscache->lru.
		 *
		 * Since we're still holding a reference to it, no harm has been
		 * done.  But we need to remove it before we drop our reference.
		 */
		errcode = FUNC5(iscache, section);
		if (errcode < 0) {
			(void) FUNC12(section);
			/* Complete the swap for cleanup. */
			section = sec;
			goto out_unlock_detach;
		}

		/* Drop the reference to @section. */
		errcode = FUNC12(section);
		if (errcode < 0) {
			/* Complete the swap for cleanup. */
			section = sec;
			goto out_unlock_detach;
		}

		/* Swap sections.
		 *
		 * We will try again in the next iteration.
		 */
		section = sec;
	}

	/* Expand the cache, if necessary. */
	if (iscache->capacity <= iscache->size) {
		/* We must never exceed the capacity. */
		if (iscache->capacity < iscache->size) {
			errcode = -pte_internal;
			goto out_unlock_detach;
		}

		errcode = FUNC1(iscache);
		if (errcode < 0)
			goto out_unlock_detach;

		/* Make sure it is big enough, now. */
		if (iscache->capacity <= iscache->size) {
			errcode = -pte_internal;
			goto out_unlock_detach;
		}
	}

	/* Insert a new entry for @section at @laddr.
	 *
	 * This hands both attach and reference over to @iscache.  We will
	 * detach and drop the reference again when the entry is removed.
	 */
	idx = iscache->size++;

	iscache->entries[idx].section = section;
	iscache->entries[idx].laddr = laddr;

	errcode = FUNC6(iscache);
	if (errcode < 0)
		return errcode;

	return FUNC0(idx);

 out_unlock_detach:
	(void) FUNC6(iscache);

 out_detach:
	(void) FUNC8(section, iscache);

 out_lru:
	(void) FUNC4(iscache);

 out_put:
	(void) FUNC12(section);

	return errcode;
}