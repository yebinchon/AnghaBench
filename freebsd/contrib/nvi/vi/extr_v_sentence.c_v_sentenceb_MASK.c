#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  int recno_t ;
struct TYPE_15__ {int lno; size_t cno; } ;
struct TYPE_14__ {int lno; size_t cno; } ;
struct TYPE_16__ {int count; TYPE_2__ m_stop; TYPE_2__ m_final; TYPE_1__ m_start; } ;
typedef  TYPE_3__ VICMD ;
struct TYPE_17__ {int cs_lno; size_t cs_cno; scalar_t__ cs_flags; int cs_ch; } ;
typedef  TYPE_4__ VCS ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ CS_EMP ; 
 scalar_t__ CS_EOL ; 
 scalar_t__ CS_SOF ; 
 int /*<<< orphan*/  DBG_FATAL ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  VM_LMODE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC9 (int) ; 

int
FUNC10(SCR *sp, VICMD *vp)
{
	VCS cs;
	recno_t slno;
	size_t len, scno;
	u_long cnt;
	int last;

	/*
	 * !!!
	 * Historic vi permitted the user to hit SOF repeatedly.
	 */
	if (vp->m_start.lno == 1 && vp->m_start.cno == 0)
		return (0);

	cs.cs_lno = vp->m_start.lno;
	cs.cs_cno = vp->m_start.cno;
	if (FUNC5(sp, &cs))
		return (1);

	cnt = FUNC0(vp, VC_C1SET) ? vp->count : 1;

	/*
	 * !!!
	 * In empty lines, skip to the previous non-white-space character.
	 * If in text, skip to the prevous white-space character.  Believe
	 * it or not, in the paragraph:
	 *	ab cd.
	 *	AB CD.
	 * if the cursor is on the 'A' or 'B', ( moves to the 'a'.  If it
	 * is on the ' ', 'C' or 'D', it moves to the 'A'.  Yes, Virginia,
	 * Berkeley was once a major center of drug activity.
	 */
	if (cs.cs_flags == CS_EMP) {
		if (FUNC3(sp, &cs))
			return (1);
		for (;;) {
			if (FUNC7(sp, &cs))
				return (1);
			if (cs.cs_flags != CS_EOL)
				break;
		}
	} else if (cs.cs_flags == 0 && !FUNC9(cs.cs_ch))
		for (;;) {
			if (FUNC7(sp, &cs))
				return (1);
			if (cs.cs_flags != 0 || FUNC9(cs.cs_ch))
				break;
		}

	for (last = 0;;) {
		if (FUNC7(sp, &cs))
			return (1);
		if (cs.cs_flags == CS_SOF)	/* SOF is a movement sink. */
			break;
		if (cs.cs_flags == CS_EOL) {
			last = 1;
			continue;
		}
		if (cs.cs_flags == CS_EMP) {
			if (--cnt == 0)
				goto ret;
			if (FUNC3(sp, &cs))
				return (1);
			last = 0;
			continue;
		}
		switch (cs.cs_ch) {
		case '.':
		case '?':
		case '!':
			if (!last || --cnt != 0) {
				last = 0;
				continue;
			}

ret:			slno = cs.cs_lno;
			scno = cs.cs_cno;

			/*
			 * Move to the start of the sentence, skipping blanks
			 * and special characters.
			 */
			do {
				if (FUNC6(sp, &cs))
					return (1);
			} while (!cs.cs_flags &&
			    (cs.cs_ch == ')' || cs.cs_ch == ']' ||
			    cs.cs_ch == '"' || cs.cs_ch == '\''));
			if ((cs.cs_flags || FUNC9(cs.cs_ch)) &&
			    FUNC4(sp, &cs))
				return (1);

			/*
			 * If it was ".  xyz", with the cursor on the 'x', or
			 * "end.  ", with the cursor in the spaces, or the
			 * beginning of a sentence preceded by an empty line,
			 * we can end up where we started.  Fix it.
			 */
			if (vp->m_start.lno != cs.cs_lno ||
			    vp->m_start.cno != cs.cs_cno)
				goto okret;

			/*
			 * Well, if an empty line preceded possible blanks
			 * and the sentence, it could be a real sentence.
			 */
			for (;;) {
				if (FUNC7(sp, &cs))
					return (1);
				if (cs.cs_flags == CS_EOL)
					continue;
				if (cs.cs_flags == 0 && FUNC9(cs.cs_ch))
					continue;
				break;
			}
			if (cs.cs_flags == CS_EMP)
				goto okret;

			/* But it wasn't; try again. */
			++cnt;
			cs.cs_lno = slno;
			cs.cs_cno = scno;
			last = 0;
			break;
		case '\t':
			last = 1;
			break;
		default:
			last =
			    cs.cs_flags == CS_EOL || FUNC9(cs.cs_ch) ||
			    cs.cs_ch == ')' || cs.cs_ch == ']' ||
			    cs.cs_ch == '"' || cs.cs_ch == '\'' ? 1 : 0;
		}
	}

okret:	vp->m_stop.lno = cs.cs_lno;
	vp->m_stop.cno = cs.cs_cno;

	/*
	 * !!!
	 * If the starting and stopping cursor positions are at the first
	 * columns in the line, i.e. the movement is cutting an entire line,
	 * the buffer is in line mode, and the starting position is the last
	 * character of the previous line.
	 *
	 * All commands move to the end of the range.  Adjust the start of
	 * the range for motion commands.
	 */
	if (FUNC2(vp))
		if (vp->m_start.cno == 0 &&
		    (cs.cs_flags != 0 || vp->m_stop.cno == 0)) {
			if (FUNC8(sp,
			    --vp->m_start.lno, DBG_FATAL, NULL, &len))
				return (1);
			vp->m_start.cno = len ? len - 1 : 0;
			FUNC1(vp, VM_LMODE);
		} else
			--vp->m_start.cno;
	vp->m_final = vp->m_stop;
	return (0);
}