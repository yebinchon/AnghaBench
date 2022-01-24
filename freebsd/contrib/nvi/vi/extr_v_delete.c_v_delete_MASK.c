#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int recno_t ;
struct TYPE_7__ {int lno; size_t cno; } ;
struct TYPE_8__ {TYPE_1__ m_final; int /*<<< orphan*/  m_stop; int /*<<< orphan*/  m_start; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int CUT_LINEMODE ; 
 int CUT_NUMOPT ; 
 int CUT_NUMREQ ; 
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC_BUFFER ; 
 int /*<<< orphan*/  VM_CUTREQ ; 
 int /*<<< orphan*/  VM_LDOUBLE ; 
 int /*<<< orphan*/  VM_LMODE ; 
 int /*<<< orphan*/  VM_RCM_MASK ; 
 int /*<<< orphan*/  VM_RCM_SET ; 
 int /*<<< orphan*/  VM_RCM_SETFNB ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int
FUNC8(SCR *sp, VICMD *vp)
{
	recno_t nlines;
	size_t len;
	int lmode;

	lmode = FUNC1(vp, VM_LMODE) ? CUT_LINEMODE : 0;

	/* Yank the lines. */
	if (FUNC3(sp, FUNC1(vp, VC_BUFFER) ? &vp->buffer : NULL,
	    &vp->m_start, &vp->m_stop,
	    lmode | (FUNC1(vp, VM_CUTREQ) ? CUT_NUMREQ : CUT_NUMOPT)))
		return (1);

	/* Delete the lines. */
	if (FUNC7(sp, &vp->m_start, &vp->m_stop, lmode))
		return (1);

	/*
	 * Check for deletion of the entire file.  Try to check a close
	 * by line so we don't go to the end of the file unnecessarily.
	 */
	if (!FUNC4(sp, vp->m_final.lno + 1)) {
		if (FUNC6(sp, &nlines))
			return (1);
		if (nlines == 0) {
			vp->m_final.lno = 1;
			vp->m_final.cno = 0;
			return (0);
		}
	}

	/*
	 * One special correction, in case we've deleted the current line or
	 * character.  We check it here instead of checking in every command
	 * that can be a motion component.
	 */
	if (FUNC5(sp, vp->m_final.lno, 0, NULL, &len)) {
		if (FUNC5(sp, nlines, DBG_FATAL, NULL, &len))
			return (1);
		vp->m_final.lno = nlines;
	}

	/*
	 * !!!
	 * Cursor movements, other than those caused by a line mode command
	 * moving to another line, historically reset the relative position.
	 *
	 * This currently matches the check made in v_yank(), I'm hoping that
	 * they should be consistent...
	 */  
	if (!FUNC1(vp, VM_LMODE)) {
		FUNC0(vp, VM_RCM_MASK);
		FUNC2(vp, VM_RCM_SET);

		/* Make sure the set cursor position exists. */
		if (vp->m_final.cno >= len)
			vp->m_final.cno = len ? len - 1 : 0;
	}

	/*
	 * !!!
	 * The "dd" command moved to the first non-blank; "d<motion>"
	 * didn't.
	 */
	if (FUNC1(vp, VM_LDOUBLE)) {
		FUNC0(vp, VM_RCM_MASK);
		FUNC2(vp, VM_RCM_SETFNB);
	}
	return (0);
}