#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VICMD ;
struct TYPE_7__ {int /*<<< orphan*/  ep; } ;
typedef  TYPE_1__ SCR ;

/* Variables and functions */
 int /*<<< orphan*/  FS_ALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_MODIFIED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_EXIT ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(SCR *sp, VICMD *vp)
{
	/* Write back any modifications. */
	if (FUNC0(sp->ep, F_MODIFIED) &&
	    FUNC4(sp, NULL, NULL, NULL, FS_ALL))
		return (1);

	/* Check to make sure it's not a temporary file. */
	if (FUNC3(sp, 0))
		return (1);

	/* Check for more files to edit. */
	if (FUNC2(sp, 0))
		return (1);

	FUNC1(sp, SC_EXIT);
	return (0);
}