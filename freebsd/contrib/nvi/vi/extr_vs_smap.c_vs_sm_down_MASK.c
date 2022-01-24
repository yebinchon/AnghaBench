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
struct TYPE_29__ {int lno; int /*<<< orphan*/  cno; } ;
struct TYPE_28__ {scalar_t__ t_maxrows; scalar_t__ t_rows; int cols; int rcm; } ;
struct TYPE_27__ {int lno; int soff; int coff; int c_scoff; int /*<<< orphan*/  c_sboff; } ;
typedef  TYPE_1__ SMAP ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ MARK ;

/* Variables and functions */
#define  CNTRL_B 131 
#define  CNTRL_U 130 
#define  CNTRL_Y 129 
 TYPE_1__* HMAP ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  OOBLNO ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_LEFTRIGHT ; 
 int /*<<< orphan*/  P_BOTTOM ; 
 int /*<<< orphan*/  P_TOP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* TMAP ; 
#define  Z_CARAT 128 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_1__**) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC14(SCR *sp, MARK *rp, recno_t count, scroll_t scmd, SMAP *smp)
{
	SMAP *ssmp, s1, s2;
	int cursor_set, ychanged, zset;

	/* Check to see if movement is possible. */
	if (HMAP->lno == 1 &&
	    (FUNC1(sp, O_LEFTRIGHT) || HMAP->soff == 1) &&
	    (scmd == CNTRL_Y || scmd == Z_CARAT || smp == HMAP)) {
		FUNC5(sp, NULL);
		return (1);
	}

	/*
	 * Small screens: see vs_refresh.c section 6a.
	 *
	 * If it's a small screen, and the movement isn't larger than a
	 * screen, i.e some context will remain, open up the screen and
	 * display by scrolling.  In this case, the cursor moves up one
	 * line for each line displayed.  Otherwise, erase/compress and
	 * repaint, and move the cursor to the first line in the screen.
	 * Note, the ^B command is always in the latter case, for historical
	 * reasons.
	 */
	cursor_set = scmd == CNTRL_Y;
	if (FUNC0(sp)) {
		if (count >= sp->t_maxrows || scmd == CNTRL_B) {
			s1 = HMAP[0];
			if (FUNC10(sp))
				return (1);
			for (; count--; s1 = s2) {
				if (FUNC13(sp, &s1, &s2))
					return (1);
				if (s2.lno == 1 &&
				    (FUNC1(sp, O_LEFTRIGHT) || s2.soff == 1))
					break;
			}
			HMAP[0] = s2;
			if (FUNC11(sp, OOBLNO, P_TOP))
				return (1);
			return (FUNC12(sp, rp, 0, P_BOTTOM));
		}
		cursor_set = scmd == CNTRL_Y || FUNC9(sp, &ssmp);
		for (; count &&
		    sp->t_rows != sp->t_maxrows; --count, ++sp->t_rows) {
			if (HMAP->lno == 1 &&
			    (FUNC1(sp, O_LEFTRIGHT) || HMAP->soff == 1))
				break;
			++TMAP;
			if (FUNC8(sp))
				return (1);
		}
		if (!cursor_set) {
			rp->lno = ssmp->lno;
			rp->cno = ssmp->c_sboff;
		}
		if (count == 0)
			return (0);
	}

	for (ychanged = zset = 0; count; --count) {
		/* If the line doesn't exist, we're done. */
		if (HMAP->lno == 1 &&
		    (FUNC1(sp, O_LEFTRIGHT) || HMAP->soff == 1))
			break;

		/* Scroll the screen and cursor down one logical line. */
		if (FUNC8(sp))
			return (1);
		switch (scmd) {
		case CNTRL_Y:
			if (smp < TMAP)
				++smp;
			else
				ychanged = 1;
			break;
		case Z_CARAT:
			if (zset) {
				if (smp < TMAP)
					++smp;
			} else {
				smp = HMAP;
				zset = 1;
			}
			/* FALLTHROUGH */
		default:
			break;
		}
	}

	if (scmd != CNTRL_Y && cursor_set)
		return(0);

	switch (scmd) {
	case CNTRL_B:
		/*
		 * If there are more lines, the ^B command is positioned at
		 * the last line of the screen.  However, the line may not
		 * exist.
		 */
		if (!count) {
			for (smp = TMAP; smp > HMAP; --smp)
				if (FUNC4(sp, smp->lno))
					break;
			break;
		}
		/* FALLTHROUGH */
	case CNTRL_U:
		/*
		 * The ^B and ^U commands move the cursor towards SOF
		 * if there are more lines to move.
		 */
		if (count < smp - HMAP)
			smp -= count;
		else
			smp = HMAP;
		break;
	case CNTRL_Y:
		/*
		 * On a ^Y that was forced to change lines, try and keep the
		 * cursor as close as possible to the last position, but also
		 * set it up so that the next "real" movement will return the
		 * cursor to the closest position to the last real movement.
		 */
		if (ychanged) {
			rp->lno = smp->lno;
			rp->cno = FUNC6(sp, smp->lno,
			    (FUNC1(sp, O_LEFTRIGHT) ? 
			    smp->coff : (smp->soff - 1) * sp->cols) +
			    sp->rcm % sp->cols);
		}
		return (0);
	case Z_CARAT:
		 /* The z^ command moves the cursor to the first new line. */
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