#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  enum which { ____Placeholder_which } which ;
struct TYPE_13__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_11__ {int count; TYPE_3__ m_stop; TYPE_3__ m_start; TYPE_3__ m_final; int /*<<< orphan*/  rkp; } ;
typedef  TYPE_1__ VICMD ;
struct TYPE_12__ {scalar_t__ cs_lno; scalar_t__ cs_cno; scalar_t__ cs_flags; int /*<<< orphan*/  cs_ch; } ;
typedef  TYPE_2__ VCS ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int BIGWORD ; 
 scalar_t__ CS_EMP ; 
 scalar_t__ CS_EOF ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int
FUNC10(SCR *sp, VICMD *vp, enum which type)
{
	enum { INWORD, NOTWORD } state;
	VCS cs;
	u_long cnt;

	cnt = FUNC0(vp, VC_C1SET) ? vp->count : 1;
	cs.cs_lno = vp->m_start.lno;
	cs.cs_cno = vp->m_start.cno;
	if (FUNC6(sp, &cs))
		return (1);

	/*
	 * If in white-space:
	 *	If the count is 1, and it's a change command, we're done.
	 *	Else, move to the first non-white-space character, which
	 *	counts as a single word move.  If it's a motion command,
	 *	don't move off the end of the line.
	 */
	if (cs.cs_flags == CS_EMP || (cs.cs_flags == 0 && FUNC1(cs.cs_ch))) {
		if (FUNC3(vp) && cs.cs_flags != CS_EMP && cnt == 1) {
			if (FUNC2(vp->rkp, 'c'))
				return (0);
			if (FUNC2(vp->rkp, 'd') || FUNC2(vp->rkp, 'y')) {
				if (FUNC5(sp, &cs))
					return (1);
				goto ret;
			}
		}
		if (FUNC4(sp, &cs))
			return (1);
		--cnt;
	}

	/*
	 * Cyclically move to the next word -- this involves skipping
	 * over word characters and then any trailing non-word characters.
	 * Note, for the 'w' command, the definition of a word keeps
	 * switching.
	 */
	if (type == BIGWORD)
		while (cnt--) {
			for (;;) {
				if (FUNC7(sp, &cs))
					return (1);
				if (cs.cs_flags == CS_EOF)
					goto ret;
				if (cs.cs_flags != 0 || FUNC1(cs.cs_ch))
					break;
			}
			/*
			 * If a motion command and we're at the end of the
			 * last word, we're done.  Delete and yank eat any
			 * trailing blanks, but we don't move off the end
			 * of the line regardless.
			 */
			if (cnt == 0 && FUNC3(vp)) {
				if ((FUNC2(vp->rkp, 'd') ||
				    FUNC2(vp->rkp, 'y')) &&
				    FUNC5(sp, &cs))
					return (1);
				break;
			}

			/* Eat whitespace characters. */
			if (FUNC4(sp, &cs))
				return (1);
			if (cs.cs_flags == CS_EOF)
				goto ret;
		}
	else
		while (cnt--) {
			state = cs.cs_flags == 0 &&
			    FUNC8(cs.cs_ch) ? INWORD : NOTWORD;
			for (;;) {
				if (FUNC7(sp, &cs))
					return (1);
				if (cs.cs_flags == CS_EOF)
					goto ret;
				if (cs.cs_flags != 0 || FUNC1(cs.cs_ch))
					break;
				if (state == INWORD) {
					if (!FUNC8(cs.cs_ch))
						break;
				} else
					if (FUNC8(cs.cs_ch))
						break;
			}
			/* See comment above. */
			if (cnt == 0 && FUNC3(vp)) {
				if ((FUNC2(vp->rkp, 'd') ||
				    FUNC2(vp->rkp, 'y')) &&
				    FUNC5(sp, &cs))
					return (1);
				break;
			}

			/* Eat whitespace characters. */
			if (cs.cs_flags != 0 || FUNC1(cs.cs_ch))
				if (FUNC4(sp, &cs))
					return (1);
			if (cs.cs_flags == CS_EOF)
				goto ret;
		}

	/*
	 * If we didn't move, we must be at EOF.
	 *
	 * !!!
	 * That's okay for motion commands, however.
	 */
ret:	if (!FUNC3(vp) &&
	    cs.cs_lno == vp->m_start.lno && cs.cs_cno == vp->m_start.cno) {
		FUNC9(sp, &vp->m_start);
		return (1);
	}

	/* Adjust the end of the range for motion commands. */
	vp->m_stop.lno = cs.cs_lno;
	vp->m_stop.cno = cs.cs_cno;
	if (FUNC3(vp) && cs.cs_flags == 0)
		--vp->m_stop.cno;

	/*
	 * Non-motion commands move to the end of the range.  Delete
	 * and yank stay at the start, ignore others.
	 */
	vp->m_final = FUNC3(vp) ? vp->m_start : vp->m_stop;
	return (0);
}