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
struct TYPE_8__ {size_t cno; int lno; } ;
struct TYPE_9__ {int count; TYPE_1__ m_stop; TYPE_1__ m_start; TYPE_1__ m_final; int /*<<< orphan*/  rkp; } ;
typedef  TYPE_2__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEXT_CHECK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  VM_LMODE ; 
 int /*<<< orphan*/  VM_RCM_MASK ; 
 int /*<<< orphan*/  VM_RCM_SETFNB ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,size_t*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC11(SCR *sp, VICMD *vp)
{
	enum { P_INTEXT, P_INBLANK } pstate;
	size_t lastlen, len;
	recno_t cnt, lastlno, lno;
	int isempty;
	CHAR_T *p;
	char *lp;

	/*
	 * !!!
	 * If the starting cursor position is at or before any non-blank
	 * characters in the line, i.e. the movement is cutting all of the
	 * line's text, the buffer is in line mode.  It's a lot easier to
	 * check here, because we know that the end is going to be the start
	 * or end of a line.
	 *
	 * This was historical practice in vi, with a single exception.  If
	 * the paragraph movement was from the start of the last line to EOF,
	 * then all the characters were deleted from the last line, but the
	 * line itself remained.  If somebody complains, don't pause, don't
	 * hesitate, just hit them.
	 */
	if (FUNC4(vp))
		if (vp->m_start.cno == 0)
			FUNC2(vp, VM_LMODE);
		else {
			vp->m_stop = vp->m_start;
			vp->m_stop.cno = 0;
			if (FUNC8(sp, vp->m_stop.lno, &vp->m_stop.cno))
				return (1);
			if (vp->m_start.cno <= vp->m_stop.cno)
				FUNC2(vp, VM_LMODE);
		}

	/* Figure out what state we're currently in. */
	lno = vp->m_start.lno;
	if (FUNC7(sp, lno, 0, &p, &len))
		goto eof;

	/*
	 * If we start in text, we want to switch states
	 * (2 * N - 1) times, in non-text, (2 * N) times.
	 */
	cnt = FUNC1(vp, VC_C1SET) ? vp->count : 1;
	cnt *= 2;
	if (len == 0 || FUNC10(p, len))
		pstate = P_INBLANK;
	else {
		--cnt;
		pstate = P_INTEXT;
	}

	for (;;) {
		lastlno = lno;
		lastlen = len;
		if (FUNC7(sp, ++lno, 0, &p, &len))
			goto eof;
		switch (pstate) {
		case P_INTEXT:
			INTEXT_CHECK;
			break;
		case P_INBLANK:
			if (len == 0 || FUNC10(p, len))
				break;
			if (--cnt) {
				pstate = P_INTEXT;
				break;
			}
			/*
			 * !!!
			 * Non-motion commands move to the end of the range,
			 * delete and yank stay at the start.  Ignore others.
			 * Adjust the end of the range for motion commands;
			 * historically, a motion component was to the end of
			 * the previous line, whereas the movement command was
			 * to the start of the new "paragraph".
			 */
found:			if (FUNC4(vp)) {
				vp->m_stop.lno = lastlno;
				vp->m_stop.cno = lastlen ? lastlen - 1 : 0;
				vp->m_final = vp->m_start;
			} else {
				vp->m_stop.lno = lno;
				vp->m_stop.cno = 0;
				vp->m_final = vp->m_stop;
			}
			return (0);
		default:
			FUNC5();
		}
	}

	/*
	 * !!!
	 * Adjust end of the range for motion commands; EOF is a movement
	 * sink.  The } command historically moved to the end of the last
	 * line, not the beginning, from any position before the end of the
	 * last line.  It also historically worked on empty files, so we
	 * have to make it okay.
	 */
eof:	if (vp->m_start.lno == lno || vp->m_start.lno == lno - 1) {
		if (FUNC6(sp, vp->m_start.lno, &p, &len, &isempty)) {
			if (!isempty)
				return (1);
			vp->m_start.cno = 0;
			return (0);
		}
		if (vp->m_start.cno == (len ? len - 1 : 0)) {
			FUNC9(sp, NULL);
			return (1);
		}
	}
	/*
	 * !!!
	 * Non-motion commands move to the end of the range, delete
	 * and yank stay at the start.  Ignore others.
	 *
	 * If deleting the line (which happens if deleting to EOF), then
	 * cursor movement is to the first nonblank.
	 */
	if (FUNC4(vp) && FUNC3(vp->rkp, 'd')) {
		FUNC0(vp, VM_RCM_MASK);
		FUNC2(vp, VM_RCM_SETFNB);
	}
	vp->m_stop.lno = lno - 1;
	vp->m_stop.cno = len ? len - 1 : 0;
	vp->m_final = FUNC4(vp) ? vp->m_start : vp->m_stop;
	return (0);
}