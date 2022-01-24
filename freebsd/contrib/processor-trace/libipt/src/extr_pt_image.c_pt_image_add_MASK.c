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
struct pt_mapped_section {int dummy; } ;
struct pt_section_list {int isid; struct pt_section_list* next; struct pt_mapped_section section; } ;
struct pt_section {int dummy; } ;
struct pt_image {struct pt_section_list* sections; } ;
struct pt_asid {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_asid const*,struct pt_asid const*) ; 
 struct pt_section_list* FUNC1 (struct pt_section*,struct pt_asid const*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 struct pt_asid* FUNC2 (struct pt_mapped_section const*) ; 
 scalar_t__ FUNC3 (struct pt_mapped_section const*) ; 
 scalar_t__ FUNC4 (struct pt_mapped_section const*) ; 
 scalar_t__ FUNC5 (struct pt_mapped_section const*) ; 
 struct pt_section* FUNC6 (struct pt_mapped_section const*) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_section_list*) ; 
 scalar_t__ FUNC8 (struct pt_section*) ; 
 int pte_internal ; 
 int pte_nomem ; 

int FUNC9(struct pt_image *image, struct pt_section *section,
		 const struct pt_asid *asid, uint64_t vaddr, int isid)
{
	struct pt_section_list **list, *next, *removed, *new;
	uint64_t size, begin, end;
	int errcode;

	if (!image || !section)
		return -pte_internal;

	size = FUNC8(section);
	begin = vaddr;
	end = begin + size;

	next = FUNC1(section, asid, begin, 0ull, size, isid);
	if (!next)
		return -pte_nomem;

	removed = NULL;
	errcode = 0;

	/* Check for overlaps while we move to the end of the list. */
	list = &(image->sections);
	while (*list) {
		const struct pt_mapped_section *msec;
		const struct pt_asid *masid;
		struct pt_section_list *current;
		struct pt_section *lsec;
		uint64_t lbegin, lend, loff;

		current = *list;
		msec = &current->section;
		masid = FUNC2(msec);

		errcode = FUNC0(masid, asid);
		if (errcode < 0)
			break;

		if (!errcode) {
			list = &((*list)->next);
			continue;
		}

		lbegin = FUNC3(msec);
		lend = FUNC4(msec);

		if ((end <= lbegin) || (lend <= begin)) {
			list = &((*list)->next);
			continue;
		}

		/* The new section overlaps with @msec's section. */
		lsec = FUNC6(msec);
		loff = FUNC5(msec);

		/* We remove @msec and insert new sections for the remaining
		 * parts, if any.  Those new sections are not mapped initially
		 * and need to be added to the end of the section list.
		 */
		*list = current->next;

		/* Keep a list of removed sections so we can re-add them in case
		 * of errors.
		 */
		current->next = removed;
		removed = current;

		/* Add a section covering the remaining bytes at the front. */
		if (lbegin < begin) {
			new = FUNC1(lsec, masid, lbegin, loff,
						 begin - lbegin, current->isid);
			if (!new) {
				errcode = -pte_nomem;
				break;
			}

			new->next = next;
			next = new;
		}

		/* Add a section covering the remaining bytes at the back. */
		if (end < lend) {
			new = FUNC1(lsec, masid, end,
						 loff + (end - lbegin),
						 lend - end, current->isid);
			if (!new) {
				errcode = -pte_nomem;
				break;
			}

			new->next = next;
			next = new;
		}
	}

	if (errcode < 0) {
		FUNC7(next);

		/* Re-add removed sections to the tail of the section list. */
		for (; *list; list = &((*list)->next))
			;

		*list = removed;
		return errcode;
	}

	FUNC7(removed);

	*list = next;
	return 0;
}