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
struct pt_section {int ucount; } ;

/* Variables and functions */
 int FUNC0 (struct pt_section*) ; 
 int FUNC1 (struct pt_section*) ; 
 int pte_internal ; 

int FUNC2(struct pt_section *section)
{
	int errcode, ucount;

	if (!section)
		return -pte_internal;

	errcode = FUNC0(section);
	if (errcode < 0)
		return errcode;

	ucount = ++section->ucount;

	errcode = FUNC1(section);
	if (errcode < 0)
		return errcode;

	if (!ucount)
		return -pte_internal;

	return 0;
}