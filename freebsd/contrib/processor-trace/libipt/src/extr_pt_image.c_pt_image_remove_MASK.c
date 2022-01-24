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
struct pt_section_list {struct pt_section_list* next; struct pt_mapped_section section; } ;
typedef  struct pt_section const pt_section ;
struct pt_image {struct pt_section_list* sections; } ;
struct pt_asid {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_asid const*,struct pt_asid const*) ; 
 struct pt_asid* FUNC1 (struct pt_mapped_section*) ; 
 scalar_t__ FUNC2 (struct pt_mapped_section*) ; 
 struct pt_section const* FUNC3 (struct pt_mapped_section*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_section_list*) ; 
 int pte_bad_image ; 
 int pte_internal ; 

int FUNC5(struct pt_image *image, struct pt_section *section,
		    const struct pt_asid *asid, uint64_t vaddr)
{
	struct pt_section_list **list;

	if (!image || !section)
		return -pte_internal;

	for (list = &image->sections; *list; list = &((*list)->next)) {
		struct pt_mapped_section *msec;
		const struct pt_section *sec;
		const struct pt_asid *masid;
		struct pt_section_list *trash;
		uint64_t begin;
		int errcode;

		trash = *list;
		msec = &trash->section;
		masid = FUNC1(msec);

		errcode = FUNC0(masid, asid);
		if (errcode < 0)
			return errcode;

		if (!errcode)
			continue;

		begin = FUNC2(msec);
		sec = FUNC3(msec);
		if (sec == section && begin == vaddr) {
			*list = trash->next;
			FUNC4(trash);

			return 0;
		}
	}

	return -pte_bad_image;
}