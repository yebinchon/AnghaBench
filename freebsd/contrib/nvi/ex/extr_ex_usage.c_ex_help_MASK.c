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
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

int
FUNC1(SCR *sp, EXCMD *cmdp)
{
	(void)FUNC0(sp,
	    "To see the list of vi commands, enter \":viusage<CR>\"\n");
	(void)FUNC0(sp,
	    "To see the list of ex commands, enter \":exusage<CR>\"\n");
	(void)FUNC0(sp,
	    "For an ex command usage statement enter \":exusage [cmd]<CR>\"\n");
	(void)FUNC0(sp,
	    "For a vi key usage statement enter \":viusage [key]<CR>\"\n");
	(void)FUNC0(sp, "To exit, enter \":q!\"\n");
	return (0);
}