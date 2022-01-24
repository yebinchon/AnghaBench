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
typedef  scalar_t__ uint16_t ;
struct pt_section {scalar_t__ acount; scalar_t__ ucount; struct pt_image_section_cache* iscache; } ;
struct pt_image_section_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_section*) ; 
 int FUNC1 (struct pt_section*) ; 
 int pte_internal ; 

int FUNC2(struct pt_section *section,
		      struct pt_image_section_cache *iscache)
{
	uint16_t acount, ucount;
	int errcode;

	if (!section || !iscache)
		return -pte_internal;

	errcode = FUNC0(section);
	if (errcode < 0)
		return errcode;

	if (section->iscache != iscache)
		goto out_unlock;

	acount = section->acount;
	if (!acount)
		goto out_unlock;

	acount -= 1;
	ucount = section->ucount;
	if (ucount < acount)
		goto out_unlock;

	section->acount = acount;
	if (!acount)
		section->iscache = NULL;

	return FUNC1(section);

 out_unlock:
	(void) FUNC1(section);
	return -pte_internal;
}