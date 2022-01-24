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
struct TYPE_8__ {size_t cno; int /*<<< orphan*/  lno; } ;
struct TYPE_9__ {int count; TYPE_1__ m_stop; TYPE_1__ m_start; TYPE_1__ m_final; int /*<<< orphan*/  rkp; } ;
typedef  TYPE_2__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  VM_LMODE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC8(SCR *sp, VICMD *vp)
{
	size_t len;
	int isempty;

	/*
	 * !!!
	 * A count moves down count - 1 rows, so, "3$" is the same as "2j$".
	 */
	if ((FUNC0(vp, VC_C1SET) ? vp->count : 1) != 1) {
		/*
		 * !!!
		 * Historically, if the $ is a motion, and deleting from
		 * at or before the first non-blank of the line, it's a
		 * line motion, and the line motion flag is set.
		 */
		vp->m_stop.cno = 0;
		if (FUNC5(sp, vp->m_start.lno, &vp->m_stop.cno))
			return (1);
		if (FUNC3(vp) && vp->m_start.cno <= vp->m_stop.cno)
			FUNC1(vp, VM_LMODE);

		--vp->count;
		if (FUNC6(sp, vp))
			return (1);
	}

	/*
	 * !!!
	 * Historically, it was illegal to use $ as a motion command on
	 * an empty line.  Unfortunately, even though C was historically
	 * aliased to c$, it (and not c$) was special cased to work on
	 * empty lines.  Since we alias C to c$ too, we have a problem.
	 * To fix it, we let c$ go through, on the assumption that it's
	 * not a problem for it to work.
	 */
	if (FUNC4(sp, vp->m_stop.lno, NULL, &len, &isempty)) {
		if (!isempty)
			return (1);
		len = 0;
	}

	if (len == 0) {
		if (FUNC3(vp) && !FUNC2(vp->rkp, 'c')) {
			FUNC7(sp, NULL);
			return (1);
		}
		return (0);
	}

	/*
	 * Non-motion commands move to the end of the range.  Delete
	 * and yank stay at the start.  Ignore others.
	 */
	vp->m_stop.cno = len ? len - 1 : 0;
	vp->m_final = FUNC3(vp) ? vp->m_start : vp->m_stop;
	return (0);
}