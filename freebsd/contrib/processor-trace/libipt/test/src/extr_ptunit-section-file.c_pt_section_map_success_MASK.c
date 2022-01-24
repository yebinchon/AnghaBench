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
struct pt_section {scalar_t__ mcount; } ;

/* Variables and functions */
 int FUNC0 (struct pt_section*) ; 
 int FUNC1 (struct pt_section*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_section*) ; 
 int pte_internal ; 
 int pte_overflow ; 

__attribute__((used)) static int FUNC3(struct pt_section *section)
{
	uint16_t mcount;
	int errcode, status;

	if (!section)
		return -pte_internal;

	mcount = section->mcount + 1;
	if (!mcount) {
		(void) FUNC1(section);
		return -pte_overflow;
	}

	section->mcount = mcount;

	errcode = FUNC1(section);
	if (errcode < 0)
		return errcode;

	status = FUNC0(section);
	if (status < 0) {
		(void) FUNC2(section);
		return status;
	}

	return 0;
}