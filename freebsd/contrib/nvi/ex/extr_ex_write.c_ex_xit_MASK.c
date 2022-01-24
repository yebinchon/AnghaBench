#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  iflags; } ;
struct TYPE_12__ {int /*<<< orphan*/  ep; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  E_C_FORCE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_MODIFIED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  SC_EXIT ; 
 int /*<<< orphan*/  SC_EXIT_FORCE ; 
 int /*<<< orphan*/  XIT ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC7(SCR *sp, EXCMD *cmdp)
{
	int force;

	FUNC3(sp, cmdp);

	if (FUNC1(sp->ep, F_MODIFIED) && FUNC5(sp, cmdp, XIT))
		return (1);
	if (FUNC6(sp, 0))
		return (1);

	force = FUNC0(cmdp->iflags, E_C_FORCE);

	if (FUNC4(sp, force))
		return (1);

	FUNC2(sp, force ? SC_EXIT_FORCE : SC_EXIT);
	return (0);
}