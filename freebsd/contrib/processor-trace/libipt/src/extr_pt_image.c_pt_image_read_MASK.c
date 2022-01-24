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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct pt_mapped_section {int dummy; } ;
struct pt_section_list {int isid; struct pt_mapped_section section; } ;
struct pt_section {int dummy; } ;
struct pt_image {struct pt_section_list* sections; } ;
struct pt_asid {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_image*,struct pt_asid const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pt_image*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pt_asid const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pt_mapped_section*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pt_section* FUNC3 (struct pt_mapped_section*) ; 
 int FUNC4 (struct pt_section*) ; 
 int FUNC5 (struct pt_section*) ; 
 int pte_internal ; 
 int pte_nomap ; 

int FUNC6(struct pt_image *image, int *isid, uint8_t *buffer,
		  uint16_t size, const struct pt_asid *asid, uint64_t addr)
{
	struct pt_mapped_section *msec;
	struct pt_section_list *slist;
	struct pt_section *section;
	int errcode, status;

	if (!image || !isid)
		return -pte_internal;

	errcode = FUNC0(image, asid, addr);
	if (errcode < 0) {
		if (errcode != -pte_nomap)
			return errcode;

		return FUNC1(image, isid, buffer, size, asid,
					      addr);
	}

	slist = image->sections;
	if (!slist)
		return -pte_internal;

	*isid = slist->isid;
	msec = &slist->section;

	section = FUNC3(msec);

	errcode = FUNC4(section);
	if (errcode < 0)
		return errcode;

	status = FUNC2(msec, buffer, size, addr);

	errcode = FUNC5(section);
		if (errcode < 0)
			return errcode;

	if (status < 0) {
		if (status != -pte_nomap)
			return status;

		return FUNC1(image, isid, buffer, size, asid,
					      addr);
	}

	return status;
}