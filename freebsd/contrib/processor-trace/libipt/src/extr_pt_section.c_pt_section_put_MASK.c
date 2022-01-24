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
typedef  int uint16_t ;
struct pt_section {int mcount; int ucount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_section*) ; 
 int FUNC1 (struct pt_section*) ; 
 int FUNC2 (struct pt_section*) ; 
 int pte_internal ; 

int FUNC3(struct pt_section *section)
{
	uint16_t ucount, mcount;
	int errcode;

	if (!section)
		return -pte_internal;

	errcode = FUNC1(section);
	if (errcode < 0)
		return errcode;

	mcount = section->mcount;
	ucount = section->ucount;
	if (ucount > 1) {
		section->ucount = ucount - 1;
		return FUNC2(section);
	}

	errcode = FUNC2(section);
	if (errcode < 0)
		return errcode;

	if (!ucount || mcount)
		return -pte_internal;

	FUNC0(section);
	return 0;
}