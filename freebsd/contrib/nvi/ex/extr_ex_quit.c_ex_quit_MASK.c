#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  iflags; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  E_C_FORCE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_EXIT ; 
 int /*<<< orphan*/  SC_EXIT_FORCE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

int
FUNC4(SCR *sp, EXCMD *cmdp)
{
	int force;

	force = FUNC0(cmdp->iflags, E_C_FORCE);

	/* Check for file modifications, or more files to edit. */
	if (FUNC3(sp, force) || FUNC2(sp, force))
		return (1);

	FUNC1(sp, force ? SC_EXIT_FORCE : SC_EXIT);
	return (0);
}