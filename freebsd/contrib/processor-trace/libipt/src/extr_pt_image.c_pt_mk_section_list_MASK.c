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
struct pt_section_list {int isid; int /*<<< orphan*/  section; } ;
struct pt_section {int dummy; } ;
struct pt_asid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_section_list*) ; 
 struct pt_section_list* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_section_list*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pt_section*,struct pt_asid const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pt_section*) ; 

__attribute__((used)) static struct pt_section_list *FUNC5(struct pt_section *section,
						  const struct pt_asid *asid,
						  uint64_t vaddr,
						  uint64_t offset,
						  uint64_t size, int isid)
{
	struct pt_section_list *list;
	int errcode;

	list = FUNC1(sizeof(*list));
	if (!list)
		return NULL;

	FUNC2(list, 0, sizeof(*list));

	errcode = FUNC4(section);
	if (errcode < 0)
		goto out_mem;

	FUNC3(&list->section, section, asid, vaddr, offset, size);
	list->isid = isid;

	return list;

out_mem:
	FUNC0(list);
	return NULL;
}