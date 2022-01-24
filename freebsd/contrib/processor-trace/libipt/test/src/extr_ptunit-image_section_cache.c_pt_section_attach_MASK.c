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
struct pt_section {int ucount; int acount; struct pt_image_section_cache* iscache; } ;
struct pt_image_section_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_section*) ; 
 int FUNC1 (struct pt_section*) ; 
 int pte_internal ; 
 int pte_overflow ; 

int FUNC2(struct pt_section *section,
		      struct pt_image_section_cache *iscache)
{
	int errcode, ucount, acount;

	if (!section || !iscache)
		return -pte_internal;

	errcode = FUNC0(section);
	if (errcode < 0)
		return errcode;

	ucount = section->ucount;
	acount = section->acount;
	if (!acount) {
		if (section->iscache || !ucount)
			goto out_unlock;

		section->iscache = iscache;
		section->acount = 1;

		return FUNC1(section);
	}

	acount += 1;
	if (!acount) {
		(void) FUNC1(section);
		return -pte_overflow;
	}

	if (ucount < acount)
		goto out_unlock;

	if (section->iscache != iscache)
		goto out_unlock;

	section->acount = acount;

	return FUNC1(section);

 out_unlock:
	(void) FUNC1(section);
	return -pte_internal;
}