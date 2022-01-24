#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  enum which { ____Placeholder_which } which ;
struct TYPE_15__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_12__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_13__ {int count; TYPE_4__ m_start; TYPE_1__ m_stop; TYPE_1__ m_final; } ;
typedef  TYPE_2__ VICMD ;
struct TYPE_14__ {scalar_t__ cs_lno; scalar_t__ cs_cno; scalar_t__ cs_flags; int /*<<< orphan*/  cs_ch; } ;
typedef  TYPE_3__ VCS ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int BIGWORD ; 
 scalar_t__ CS_SOF ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static int
FUNC9(SCR *sp, VICMD *vp, enum which type)
{
	enum { INWORD, NOTWORD } state;
	VCS cs;
	u_long cnt;

	cnt = FUNC0(vp, VC_C1SET) ? vp->count : 1;
	cs.cs_lno = vp->m_start.lno;
	cs.cs_cno = vp->m_start.cno;
	if (FUNC4(sp, &cs))
		return (1);

	/*
	 * !!!
	 * If in whitespace, or the previous character is whitespace, move
	 * past it.  (This doesn't count as a word move.)  Stay at the
	 * character before the current one, it sets word "state" for the
	 * 'b' command.
	 */
	if (cs.cs_flags == 0 && !FUNC1(cs.cs_ch)) {
		if (FUNC6(sp, &cs))
			return (1);
		if (cs.cs_flags == 0 && !FUNC1(cs.cs_ch))
			goto start;
	}
	if (FUNC3(sp, &cs))
		return (1);

	/*
	 * Cyclically move to the beginning of the previous word -- this
	 * involves skipping over word characters and then any trailing
	 * non-word characters.  Note, for the 'b' command, the definition
	 * of a word keeps switching.
	 */
start:	if (type == BIGWORD)
		while (cnt--) {
			for (;;) {
				if (FUNC6(sp, &cs))
					return (1);
				if (cs.cs_flags == CS_SOF)
					goto ret;
				if (cs.cs_flags != 0 || FUNC1(cs.cs_ch))
					break;
			}
			/*
			 * When we reach the end of the word before the last
			 * word, we're done.  If we changed state, move forward
			 * one to the end of the next word.
			 */
			if (cnt == 0) {
				if (cs.cs_flags == 0 && FUNC5(sp, &cs))
					return (1);
				break;
			}

			/* Eat whitespace characters. */
			if (FUNC3(sp, &cs))
				return (1);
			if (cs.cs_flags == CS_SOF)
				goto ret;
		}
	else
		while (cnt--) {
			state = cs.cs_flags == 0 &&
			    FUNC7(cs.cs_ch) ? INWORD : NOTWORD;
			for (;;) {
				if (FUNC6(sp, &cs))
					return (1);
				if (cs.cs_flags == CS_SOF)
					goto ret;
				if (cs.cs_flags != 0 || FUNC1(cs.cs_ch))
					break;
				if (state == INWORD) {
					if (!FUNC7(cs.cs_ch))
						break;
				} else
					if (FUNC7(cs.cs_ch))
						break;
			}
			/* See comment above. */
			if (cnt == 0) {
				if (cs.cs_flags == 0 && FUNC5(sp, &cs))
					return (1);
				break;
			}

			/* Eat whitespace characters. */
			if (cs.cs_flags != 0 || FUNC1(cs.cs_ch))
				if (FUNC3(sp, &cs))
					return (1);
			if (cs.cs_flags == CS_SOF)
				goto ret;
		}

	/* If we didn't move, we must be at SOF. */
ret:	if (cs.cs_lno == vp->m_start.lno && cs.cs_cno == vp->m_start.cno) {
		FUNC8(sp, &vp->m_start);
		return (1);
	}

	/* Set the end of the range for motion commands. */
	vp->m_stop.lno = cs.cs_lno;
	vp->m_stop.cno = cs.cs_cno;

	/*
	 * All commands move to the end of the range.  Motion commands
	 * adjust the starting point to the character before the current
	 * one.
	 *
	 * !!!
	 * The historic vi didn't get this right -- the `yb' command yanked
	 * the right stuff and even updated the cursor value, but the cursor
	 * was not actually updated on the screen.
	 */
	vp->m_final = vp->m_stop;
	if (FUNC2(vp))
		--vp->m_start.cno;
	return (0);
}