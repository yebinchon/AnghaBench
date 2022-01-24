#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t cno; int /*<<< orphan*/  lno; } ;
struct TYPE_13__ {TYPE_4__ m_start; TYPE_4__ m_stop; TYPE_4__ m_final; } ;
typedef  TYPE_2__ VICMD ;
struct TYPE_12__ {size_t cs_cno; scalar_t__ cs_flags; int cs_ch; int /*<<< orphan*/  cs_lno; } ;
typedef  TYPE_1__ VCS ;
struct TYPE_15__ {int* mcs; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_4__ MARK ;
typedef  int const CHAR_T ;

/* Variables and functions */
 scalar_t__ CS_EOF ; 
 scalar_t__ CS_SOF ; 
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  M_BERR ; 
 int* FUNC2 (int const*,int) ; 
 TYPE_9__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VM_LMODE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const**,size_t*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const**,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 

int
FUNC12(SCR *sp, VICMD *vp)
{
	VCS cs;
	MARK *mp;
	size_t cno, len, off;
	int cnt, isempty, matchc, startc, (*gc)(SCR *, VCS *);
	CHAR_T *p;
	CHAR_T *cp;
	const CHAR_T *match_chars;

	/*
	 * Historically vi would match (), {} and [] however
	 * an update included <>.  This is ok for editing HTML
	 * but a pain in the butt for C source.
	 * Making it an option lets the user decide what is 'right'.
	 */
	match_chars = FUNC3(sp)->mcs;

	/*
	 * !!!
	 * Historic practice; ignore the count.
	 *
	 * !!!
	 * Historical practice was to search for the initial character in the
	 * forward direction only.
	 */
	if (FUNC7(sp, vp->m_start.lno, &p, &len, &isempty)) {
		if (isempty)
			goto nomatch;
		return (1);
	}
	for (off = vp->m_start.cno;; ++off) {
		if (off >= len) {
nomatch:		FUNC10(sp, M_BERR, "184|No match character on this line");
			return (1);
		}
		startc = p[off];
		cp = FUNC2(match_chars, startc);
		if (cp != NULL) {
			cnt = cp - match_chars;
			matchc = match_chars[cnt ^ 1];
			gc = cnt & 1 ? cs_prev : cs_next;
			break;
		}
	}

	cs.cs_lno = vp->m_start.lno;
	cs.cs_cno = off;
	if (FUNC4(sp, &cs))
		return (1);
	for (cnt = 1;;) {
		if (gc(sp, &cs))
			return (1);
		if (cs.cs_flags != 0) {
			if (cs.cs_flags == CS_EOF || cs.cs_flags == CS_SOF)
				break;
			continue;
		}
		if (cs.cs_ch == startc)
			++cnt;
		else if (cs.cs_ch == matchc && --cnt == 0)
			break;
	}
	if (cnt) {
		FUNC10(sp, M_BERR, "185|Matching character not found");
		return (1);
	}

	vp->m_stop.lno = cs.cs_lno;
	vp->m_stop.cno = cs.cs_cno;

	/*
	 * If moving right, non-motion commands move to the end of the range.
	 * Delete and yank stay at the start.
	 *
	 * If moving left, all commands move to the end of the range.
	 *
	 * !!!
	 * Don't correct for leftward movement -- historic vi deleted the
	 * starting cursor position when deleting to a match.
	 */
	if (vp->m_start.lno < vp->m_stop.lno ||
	    (vp->m_start.lno == vp->m_stop.lno &&
	    vp->m_start.cno < vp->m_stop.cno))
		vp->m_final = FUNC1(vp) ? vp->m_start : vp->m_stop;
	else
		vp->m_final = vp->m_stop;

	/*
	 * !!!
	 * If the motion is across lines, and the earliest cursor position
	 * is at or before any non-blank characters in the line, i.e. the
	 * movement is cutting all of the line's text, and the later cursor
	 * position has nothing other than whitespace characters between it
	 * and the end of its line, the buffer is in line mode.
	 */
	if (!FUNC1(vp) || vp->m_start.lno == vp->m_stop.lno)
		return (0);
	mp = vp->m_start.lno < vp->m_stop.lno ? &vp->m_start : &vp->m_stop;
	if (mp->cno != 0) {
		cno = 0;
		if (FUNC11(sp, mp->lno, &cno))
			return (1);
		if (cno < mp->cno)
			return (0);
	}
	mp = vp->m_start.lno < vp->m_stop.lno ? &vp->m_stop : &vp->m_start;
	if (FUNC8(sp, mp->lno, DBG_FATAL, &p, &len))
		return (1);
	for (p += mp->cno + 1, len -= mp->cno; --len; ++p)
		if (!FUNC9(*p))
			return (0);
	FUNC0(vp, VM_LMODE);
	return (0);
}