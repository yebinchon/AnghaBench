#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  iflags; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  E_C_FORCE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_EXIT ; 
 int /*<<< orphan*/  SC_EXIT_FORCE ; 
 int /*<<< orphan*/  WQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(SCR *sp, EXCMD *cmdp)
{
	int force;

	if (FUNC3(sp, cmdp, WQ))
		return (1);
	if (FUNC4(sp, 0))
		return (1);

	force = FUNC0(cmdp->iflags, E_C_FORCE);

	if (FUNC2(sp, force))
		return (1);

	FUNC1(sp, force ? SC_EXIT_FORCE : SC_EXIT);
	return (0);
}