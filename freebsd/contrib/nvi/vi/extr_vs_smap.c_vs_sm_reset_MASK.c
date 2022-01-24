#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ recno_t ;
struct TYPE_23__ {TYPE_1__* gp; } ;
struct TYPE_22__ {scalar_t__ lno; size_t soff; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* scr_move ) (TYPE_3__*,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ SMAP ;
typedef  TYPE_3__ SCR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 TYPE_2__* HMAP ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_LEFTRIGHT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* TMAP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,size_t) ; 
 scalar_t__ FUNC7 (TYPE_3__*,size_t) ; 
 scalar_t__ FUNC8 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_3__*,TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC11(SCR *sp, recno_t lno)
{
	SMAP *p, *t;
	size_t cnt_orig, cnt_new, cnt, diff;

	/*
	 * See if the number of on-screen rows taken up by the old display
	 * for the line is the same as the number needed for the new one.
	 * If so, repaint, otherwise do it the hard way.
	 */
	for (p = HMAP; p->lno != lno; ++p);
	if (FUNC1(sp, O_LEFTRIGHT)) {
		t = p;
		cnt_orig = cnt_new = 1;
	} else {
		for (cnt_orig = 0,
		    t = p; t <= TMAP && t->lno == lno; ++cnt_orig, ++t);
		cnt_new = FUNC9(sp, lno, NULL);
	}

	FUNC0(cnt_orig);

	if (cnt_orig == cnt_new) {
		do {
			FUNC2(p);
			if (FUNC8(sp, p, NULL, NULL))
				return (1);
		} while (++p < t);
		return (0);
	}

	if (cnt_orig < cnt_new) {
		/* Get the difference. */
		diff = cnt_new - cnt_orig;

		/*
		 * The lines left in the screen override the number of screen
		 * lines in the inserted line.
		 */
		cnt = (TMAP - p) + 1;
		if (diff > cnt)
			diff = cnt;

		/* If there are any following lines, push them down. */
		if (cnt > 1) {
			(void)sp->gp->scr_move(sp, p - HMAP, 0);
			if (FUNC7(sp, diff))
				return (1);

			/* Shift the screen map down. */
			FUNC3(p + diff, p,
			    (((TMAP - p) - diff) + 1) * sizeof(SMAP));
		}

		/* Fill in the SMAP for the replaced line, and display. */
		for (cnt = 1, t = p; cnt_new-- && t <= TMAP; ++t, ++cnt) {
			t->lno = lno;
			t->soff = cnt;
			FUNC2(t);
			if (FUNC8(sp, t, NULL, NULL))
				return (1);
		}
	} else {
		/* Get the difference. */
		diff = cnt_orig - cnt_new;

		/* Delete that many lines from the screen. */
		(void)sp->gp->scr_move(sp, p - HMAP, 0);
		if (FUNC6(sp, diff))
			return (1);

		/* Shift the screen map up. */
		FUNC3(p, p + diff, (((TMAP - p) - diff) + 1) * sizeof(SMAP));

		/* Fill in the SMAP for the replaced line, and display. */
		for (cnt = 1, t = p; cnt_new--; ++t, ++cnt) {
			t->lno = lno;
			t->soff = cnt;
			FUNC2(t);
			if (FUNC8(sp, t, NULL, NULL))
				return (1);
		}

		/* Display the new lines at the bottom of the screen. */
		for (t = TMAP - diff;;) {
			if (t < TMAP && FUNC10(sp, t, t + 1))
				return (1);
			/* vs_sm_next() flushed the cache. */
			if (FUNC8(sp, ++t, NULL, NULL))
				return (1);
			if (t == TMAP)
				break;
		}
	}
	return (0);
}