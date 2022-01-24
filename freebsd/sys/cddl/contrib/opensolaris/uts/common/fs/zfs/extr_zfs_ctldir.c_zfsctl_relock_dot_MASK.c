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
struct TYPE_7__ {int v_iflag; } ;
typedef  TYPE_1__ vnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int LK_DOWNGRADE ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LK_UPGRADE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VI_DOOMED ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int
FUNC5(vnode_t *dvp, int ltype)
{
	FUNC3(dvp);
	if (ltype != FUNC1(dvp)) {
		if (ltype == LK_EXCLUSIVE)
			FUNC2(dvp, LK_UPGRADE | LK_RETRY);
		else /* if (ltype == LK_SHARED) */
			FUNC2(dvp, LK_DOWNGRADE | LK_RETRY);

		/* Relock for the "." case may left us with reclaimed vnode. */
		if ((dvp->v_iflag & VI_DOOMED) != 0) {
			FUNC4(dvp);
			return (FUNC0(ENOENT));
		}
	}
	return (0);
}