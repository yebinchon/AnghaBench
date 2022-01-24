#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_28__ {scalar_t__ lno; size_t cno; } ;
struct TYPE_31__ {scalar_t__ lno; } ;
struct TYPE_29__ {int count; TYPE_14__ m_start; TYPE_5__ m_stop; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ VICMD ;
struct TYPE_30__ {scalar_t__ lno; size_t cno; int /*<<< orphan*/  showmode; } ;
typedef  TYPE_2__ SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int CUT_LINEMODE ; 
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  LOG_CORRECT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  OOBLNO ; 
 int /*<<< orphan*/  O_AUTOINDENT ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CHANGE ; 
 int TXT_AICHARS ; 
 int TXT_APPENDEOL ; 
 int TXT_EMARK ; 
 int TXT_OVERWRITE ; 
 int /*<<< orphan*/  VC_BUFFER ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  VM_LMODE ; 
 int /*<<< orphan*/  VM_RCM_MASK ; 
 int /*<<< orphan*/  VM_RCM_SET ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_14__*,TYPE_5__*,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ **,size_t*,int*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC12 (TYPE_2__*,TYPE_14__*,TYPE_5__*,int) ; 
 scalar_t__ FUNC13 (TYPE_2__*,scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC16 (TYPE_2__*,TYPE_1__*,TYPE_5__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC17(SCR *sp, VICMD *vp)
{
	size_t blen, len;
	u_int32_t flags;
	int isempty, lmode, rval;
	CHAR_T *bp;
	CHAR_T *p;

	/*
	 * 'c' can be combined with motion commands that set the resulting
	 * cursor position, i.e. "cG".  Clear the VM_RCM flags and make the
	 * resulting cursor position stick, inserting text has its own rules
	 * for cursor positioning.
	 */
	FUNC1(vp, VM_RCM_MASK);
	FUNC3(vp, VM_RCM_SET);

	/*
	 * Find out if the file is empty, it's easier to handle it as a
	 * special case.
	 */
	if (vp->m_start.lno == vp->m_stop.lno &&
	    FUNC9(sp, vp->m_start.lno, &p, &len, &isempty)) {
		if (!isempty)
			return (1);
		return (FUNC15(sp, vp));
	}

	flags = FUNC14(sp, vp, 0);
	sp->showmode = SM_CHANGE;

	/*
	 * Move the cursor to the start of the change.  Note, if autoindent
	 * is turned on, the cc command in line mode changes from the first
	 * *non-blank* character of the line, not the first character.  And,
	 * to make it just a bit more exciting, the initial space is handled
	 * as auto-indent characters.
	 */
	lmode = FUNC2(vp, VM_LMODE) ? CUT_LINEMODE : 0;
	if (lmode) {
		vp->m_start.cno = 0;
		if (FUNC7(sp, O_AUTOINDENT)) {
			if (FUNC13(sp, vp->m_start.lno, &vp->m_start.cno))
				return (1);
			FUNC5(TXT_AICHARS);
		}
	}
	sp->lno = vp->m_start.lno;
	sp->cno = vp->m_start.cno;

	LOG_CORRECT;

	/*
	 * If not in line mode and changing within a single line, copy the
	 * text and overwrite it.
	 */
	if (!lmode && vp->m_start.lno == vp->m_stop.lno) {
		/*
		 * !!!
		 * Historic practice, c did not cut into the numeric buffers,
		 * only the unnamed one.
		 */
		if (FUNC8(sp,
		    FUNC2(vp, VC_BUFFER) ? &vp->buffer : NULL,
		    &vp->m_start, &vp->m_stop, lmode))
			return (1);
		if (len == 0)
			FUNC5(TXT_APPENDEOL);
		FUNC5(TXT_EMARK | TXT_OVERWRITE);
		return (FUNC16(sp, vp, &vp->m_stop, p, len,
		    0, OOBLNO, FUNC2(vp, VC_C1SET) ? vp->count : 1, flags));
	}

	/*
	 * It's trickier if in line mode or changing over multiple lines.  If
	 * we're in line mode delete all of the lines and insert a replacement
	 * line which the user edits.  If there was leading whitespace in the
	 * first line being changed, we copy it and use it as the replacement.
	 * If we're not in line mode, we delete the text and start inserting.
	 *
	 * !!!
	 * Copy the text.  Historic practice, c did not cut into the numeric
	 * buffers, only the unnamed one.
	 */
	if (FUNC8(sp,
	    FUNC2(vp, VC_BUFFER) ? &vp->buffer : NULL,
	    &vp->m_start, &vp->m_stop, lmode))
		return (1);

	/* If replacing entire lines and there's leading text. */
	if (lmode && vp->m_start.cno) {
		/*
		 * Get a copy of the first line changed, and copy out the
		 * leading text.
		 */
		if (FUNC10(sp, vp->m_start.lno, DBG_FATAL, &p, &len))
			return (1);
		FUNC4(sp, bp, blen, vp->m_start.cno);
		FUNC6(bp, p, vp->m_start.cno);
	} else
		bp = NULL;

	/* Delete the text. */
	if (FUNC12(sp, &vp->m_start, &vp->m_stop, lmode))
		return (1);

	/* If replacing entire lines, insert a replacement line. */
	if (lmode) {
		if (FUNC11(sp, vp->m_start.lno, bp, vp->m_start.cno))
			return (1);
		sp->lno = vp->m_start.lno;
		len = sp->cno = vp->m_start.cno;
	}

	/* Get the line we're editing. */
	if (FUNC9(sp, vp->m_start.lno, &p, &len, &isempty)) {
		if (!isempty)
			return (1);
		len = 0;
	}

	/* Check to see if we're appending to the line. */
	if (vp->m_start.cno >= len)
		FUNC5(TXT_APPENDEOL);

	rval = FUNC16(sp, vp, NULL, p, len,
	    0, OOBLNO, FUNC2(vp, VC_C1SET) ? vp->count : 1, flags);

	if (bp != NULL)
		FUNC0(sp, bp, blen);
	return (rval);
}