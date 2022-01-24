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
struct pt_section {int (* unmap ) (struct pt_section*) ;int /*<<< orphan*/ * bcache; scalar_t__ mcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pt_section*) ; 
 int FUNC2 (struct pt_section*) ; 
 int pte_internal ; 
 int pte_nomap ; 
 int FUNC3 (struct pt_section*) ; 

int FUNC4(struct pt_section *section)
{
	uint16_t mcount;
	int errcode, status;

	if (!section)
		return -pte_internal;

	errcode = FUNC1(section);
	if (errcode < 0)
		return errcode;

	mcount = section->mcount;

	errcode = -pte_nomap;
	if (!mcount)
		goto out_unlock;

	section->mcount = mcount -= 1;
	if (mcount)
		return FUNC2(section);

	errcode = -pte_internal;
	if (!section->unmap)
		goto out_unlock;

	status = section->unmap(section);

	FUNC0(section->bcache);
	section->bcache = NULL;

	errcode = FUNC2(section);
	if (errcode < 0)
		return errcode;

	return status;

out_unlock:
	(void) FUNC2(section);
	return errcode;
}