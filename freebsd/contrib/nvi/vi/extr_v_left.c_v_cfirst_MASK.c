#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int recno_t ;
struct TYPE_8__ {scalar_t__ cno; int lno; } ;
struct TYPE_9__ {int count; TYPE_1__ m_stop; TYPE_1__ m_start; int /*<<< orphan*/  rkp; TYPE_1__ m_final; } ;
typedef  TYPE_2__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  VM_LMODE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(SCR *sp, VICMD *vp)
{
	recno_t cnt, lno;

	/*
	 * !!!
	 * If the _ is a motion component, it makes the command a line motion
	 * e.g. "d_" deletes the line.  It also means that the cursor doesn't
	 * move.
	 *
	 * The _ command never failed in the first column.
	 */
	if (FUNC3(vp))
		FUNC1(vp, VM_LMODE);
	/*
	 * !!!
	 * Historically a specified count makes _ move down count - 1
	 * rows, so, "3_" is the same as "2j_".
	 */
	cnt = FUNC0(vp, VC_C1SET) ? vp->count : 1;
	if (cnt != 1) {
		--vp->count;
		return (FUNC6(sp, vp));
	}

	/*
	 * Move to the first non-blank.
	 *
	 * Can't just use RCM_SET_FNB, in case _ is used as the motion
	 * component of another command.
	 */
	vp->m_stop.cno = 0;
	if (FUNC5(sp, vp->m_stop.lno, &vp->m_stop.cno))
		return (1);

	/*
	 * !!!
	 * The _ command has to fail if the file is empty and we're doing
	 * a delete.  If deleting line 1, and 0 is the first nonblank,
	 * make the check.
	 */
	if (vp->m_stop.lno == 1 &&
	    vp->m_stop.cno == 0 && FUNC2(vp->rkp, 'd')) {
		if (FUNC4(sp, &lno))
			return (1);
		if (lno == 0) {
			FUNC7(sp);
			return (1);
		}
	}

	/*
	 * Delete and non-motion commands move to the end of the range,
	 * yank stays at the start.  Ignore others.
	 */
	vp->m_final =
	    FUNC3(vp) && FUNC2(vp->rkp, 'y') ? vp->m_start : vp->m_stop;
	return (0);
}