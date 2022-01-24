#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int scroll_t ;
typedef  scalar_t__ recno_t ;
struct TYPE_29__ {scalar_t__ lno; int /*<<< orphan*/  cno; } ;
struct TYPE_28__ {scalar_t__ t_maxrows; scalar_t__ t_rows; int cols; int rcm; } ;
struct TYPE_27__ {scalar_t__ lno; int coff; int c_scoff; int /*<<< orphan*/  c_sboff; int /*<<< orphan*/  soff; } ;
typedef  TYPE_1__ SMAP ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ MARK ;

/* Variables and functions */
#define  CNTRL_D 131 
#define  CNTRL_E 130 
#define  CNTRL_F 129 
 TYPE_1__* HMAP ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  OOBLNO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_LEFTRIGHT ; 
 int /*<<< orphan*/  P_BOTTOM ; 
 int /*<<< orphan*/  P_TOP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* TMAP ; 
#define  Z_PLUS 128 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_1__**) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC13 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(SCR *sp, MARK *rp, recno_t count, scroll_t scmd, SMAP *smp)
{
	int cursor_set, echanged, zset;
	SMAP *ssmp, s1, s2;

	/*
	 * Check to see if movement is possible.
	 *
	 * Get the line after the map.  If that line is a new one (and if
	 * O_LEFTRIGHT option is set, this has to be true), and the next
	 * line doesn't exist, and the cursor doesn't move, or the cursor
	 * isn't even on the screen, or the cursor is already at the last
	 * line in the map, it's an error.  If that test succeeded because
	 * the cursor wasn't at the end of the map, test to see if the map
	 * is mostly empty.
	 */
	if (FUNC12(sp, TMAP, &s1))
		return (1);
	if (s1.lno > TMAP->lno && !FUNC4(sp, s1.lno)) {
		if (scmd == CNTRL_E || scmd == Z_PLUS || smp == TMAP) {
			FUNC5(sp, NULL);
			return (1);
		}
		if (FUNC12(sp, smp, &s1))
			return (1);
		if (s1.lno > smp->lno && !FUNC4(sp, s1.lno)) {
			FUNC5(sp, NULL);
			return (1);
		}
	}

	/*
	 * Small screens: see vs_refresh.c section 6a.
	 *
	 * If it's a small screen, and the movement isn't larger than a
	 * screen, i.e some context will remain, open up the screen and
	 * display by scrolling.  In this case, the cursor moves down one
	 * line for each line displayed.  Otherwise, erase/compress and
	 * repaint, and move the cursor to the first line in the screen.
	 * Note, the ^F command is always in the latter case, for historical
	 * reasons.
	 */
	cursor_set = 0;
	if (FUNC0(sp)) {
		if (count >= sp->t_maxrows || scmd == CNTRL_F) {
			s1 = TMAP[0];
			if (FUNC10(sp))
				return (1);
			for (; count--; s1 = s2) {
				if (FUNC12(sp, &s1, &s2))
					return (1);
				if (s2.lno != s1.lno && !FUNC4(sp, s2.lno))
					break;
			}
			TMAP[0] = s2;
			if (FUNC11(sp, OOBLNO, P_BOTTOM))
				return (1);
			return (FUNC13(sp, rp, 0, P_TOP));
		}
		cursor_set = scmd == CNTRL_E || FUNC9(sp, &ssmp);
		for (; count &&
		    sp->t_rows != sp->t_maxrows; --count, ++sp->t_rows) {
			if (FUNC12(sp, TMAP, &s1))
				return (1);
			if (TMAP->lno != s1.lno && !FUNC4(sp, s1.lno))
				break;
			*++TMAP = s1;
			/* vs_sm_next() flushed the cache. */
			if (FUNC7(sp, TMAP, NULL, NULL))
				return (1);

			if (!cursor_set)
				++ssmp;
		}
		if (!cursor_set) {
			rp->lno = ssmp->lno;
			rp->cno = ssmp->c_sboff;
		}
		if (count == 0)
			return (0);
	}

	for (echanged = zset = 0; count; --count) {
		/* Decide what would show up on the screen. */
		if (FUNC12(sp, TMAP, &s1))
			return (1);

		/* If the line doesn't exist, we're done. */
		if (TMAP->lno != s1.lno && !FUNC4(sp, s1.lno))
			break;

		/* Scroll the screen cursor up one logical line. */
		if (FUNC8(sp))
			return (1);
		switch (scmd) {
		case CNTRL_E:
			if (smp > HMAP)
				--smp;
			else
				echanged = 1;
			break;
		case Z_PLUS:
			if (zset) {
				if (smp > HMAP)
					--smp;
			} else {
				smp = TMAP;
				zset = 1;
			}
			/* FALLTHROUGH */
		default:
			break;
		}
	}

	if (cursor_set)
		return(0);

	switch (scmd) {
	case CNTRL_E:
		/*
		 * On a ^E that was forced to change lines, try and keep the
		 * cursor as close as possible to the last position, but also
		 * set it up so that the next "real" movement will return the
		 * cursor to the closest position to the last real movement.
		 */
		if (echanged) {
			rp->lno = smp->lno;
			rp->cno = FUNC6(sp, smp->lno,
			    (FUNC1(sp, O_LEFTRIGHT) ? 
			    smp->coff : (smp->soff - 1) * sp->cols) +
			    sp->rcm % sp->cols);
		}
		return (0);
	case CNTRL_F:
		/*
		 * If there are more lines, the ^F command is positioned at
		 * the first line of the screen.
		 */
		if (!count) {
			smp = HMAP;
			break;
		}
		/* FALLTHROUGH */
	case CNTRL_D:
		/*
		 * The ^D and ^F commands move the cursor towards EOF
		 * if there are more lines to move.  Check to be sure
		 * the lines actually exist.  (They may not if the
		 * file is smaller than the screen.)
		 */
		for (; count; --count, ++smp)
			if (smp == TMAP || !FUNC4(sp, smp[1].lno))
				break;
		break;
	case Z_PLUS:
		 /* The z+ command moves the cursor to the first new line. */
		break;
	default:
		FUNC3();
	}

	if (!FUNC2(smp) && FUNC7(sp, smp, NULL, NULL))
		return (1);
	rp->lno = smp->lno;
	rp->cno = smp->c_scoff == 255 ? 0 : smp->c_sboff;
	return (0);
}