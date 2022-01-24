#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t cno; int /*<<< orphan*/  lno; } ;
struct TYPE_7__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_1__ m_start; } ;
typedef  TYPE_2__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(SCR *sp, VICMD *vp)
{
	size_t len;
	int isempty;

	if (FUNC2(sp, vp->m_start.lno, NULL, &len, &isempty)) {
		if (isempty)
			goto eol;
		return (1);
	}

	/* It's always illegal to move right on empty lines. */
	if (len == 0) {
eol:		FUNC3(sp, NULL);
		return (1);
	}

	/*
	 * Non-motion commands move to the end of the range.  Delete and
	 * yank stay at the start.  Ignore others.  Adjust the end of the
	 * range for motion commands.
	 *
	 * !!!
	 * Historically, "[cdsy]l" worked at the end of a line.  Also,
	 * EOL is a count sink.
	 */
	vp->m_stop.cno = vp->m_start.cno +
	    (FUNC0(vp, VC_C1SET) ? vp->count : 1);
	if (vp->m_start.cno == len - 1 && !FUNC1(vp)) {
		FUNC3(sp, NULL);
		return (1);
	}
	if (vp->m_stop.cno >= len) {
		vp->m_stop.cno = len - 1;
		vp->m_final = FUNC1(vp) ? vp->m_start : vp->m_stop;
	} else if (FUNC1(vp)) {
		--vp->m_stop.cno;
		vp->m_final = vp->m_start;
	} else
		vp->m_final = vp->m_stop;
	return (0);
}