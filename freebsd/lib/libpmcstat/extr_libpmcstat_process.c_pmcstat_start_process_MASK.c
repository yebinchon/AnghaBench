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

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 size_t PARENTSOCKET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,char*,int) ; 

void
FUNC3(int *pmcstat_sockpair)
{
	/* Signal the child to proceed. */
	if (FUNC2(pmcstat_sockpair[PARENTSOCKET], "!", 1) != 1)
		FUNC1(EX_OSERR, "ERROR (parent): write of token failed");

	(void) FUNC0(pmcstat_sockpair[PARENTSOCKET]);
}