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
struct pt_mapped_section {int dummy; } ;
struct pt_section_list {int isid; struct pt_mapped_section section; } ;
struct pt_section {int dummy; } ;
struct pt_image {struct pt_section_list* sections; } ;
struct pt_asid {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_image*,struct pt_asid const*,int /*<<< orphan*/ ) ; 
 struct pt_section* FUNC1 (struct pt_mapped_section*) ; 
 int FUNC2 (struct pt_section*) ; 
 int pte_internal ; 

int FUNC3(struct pt_image *image, struct pt_mapped_section *usec,
		  const struct pt_asid *asid, uint64_t vaddr)
{
	struct pt_mapped_section *msec;
	struct pt_section_list *slist;
	struct pt_section *section;
	int errcode;

	if (!image || !usec)
		return -pte_internal;

	errcode = FUNC0(image, asid, vaddr);
	if (errcode < 0)
		return errcode;

	slist = image->sections;
	if (!slist)
		return -pte_internal;

	msec = &slist->section;
	section = FUNC1(msec);

	errcode = FUNC2(section);
	if (errcode < 0)
		return errcode;

	*usec = *msec;

	return slist->isid;
}