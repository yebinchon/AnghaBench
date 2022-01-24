#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  void* recno_t ;
typedef  int pos_t ;
struct TYPE_20__ {size_t t_rows; } ;
struct TYPE_19__ {int lno; int soff; scalar_t__ coff; } ;
typedef  TYPE_1__ SMAP ;
typedef  TYPE_2__ SCR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__* HMAP ; 
 void* OOBLNO ; 
#define  P_BOTTOM 131 
#define  P_FILL 130 
#define  P_MIDDLE 129 
#define  P_TOP 128 
 int /*<<< orphan*/  SC_SCR_REDRAW ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* TMAP ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int*) ; 
 void* FUNC5 (TYPE_2__*,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 

int
FUNC9(SCR *sp, recno_t lno, pos_t pos)
{
	SMAP *p, tmp;
	size_t cnt;

	/* Flush all cached information from the SMAP. */
	for (p = HMAP, cnt = sp->t_rows; cnt--; ++p)
		FUNC2(p);

	/*
	 * If the map is filled, the screen must be redrawn.
	 *
	 * XXX
	 * This is a bug.  We should try and figure out if the desired line
	 * is already in the map or close by -- scrolling the screen would
	 * be a lot better than redrawing.
	 */
	FUNC0(sp, SC_SCR_REDRAW);

	switch (pos) {
	case P_FILL:
		tmp.lno = 1;
		tmp.coff = 0;
		tmp.soff = 1;

		/* See if less than half a screen from the top. */
		if (FUNC7(sp,
		    &tmp, lno, FUNC1(sp)) <= FUNC1(sp)) {
			lno = 1;
			goto top;
		}

		/* See if less than half a screen from the bottom. */
		if (FUNC4(sp, &tmp.lno))
			return (1);
		tmp.coff = 0;
		tmp.soff = FUNC5(sp, tmp.lno, NULL);
		if (FUNC7(sp,
		    &tmp, lno, FUNC1(sp)) <= FUNC1(sp)) {
			TMAP->lno = tmp.lno;
			TMAP->coff = tmp.coff;
			TMAP->soff = tmp.soff;
			goto bottom;
		}
		goto middle;
	case P_TOP:
		if (lno != OOBLNO) {
top:			HMAP->lno = lno;
			HMAP->coff = 0;
			HMAP->soff = 1;
		} else {
			/*
			 * If number of lines HMAP->lno (top line) spans
			 * changed due to, say reformatting, and now is
			 * fewer than HMAP->soff, reset so the line is
			 * redrawn at the top of the screen.
			 */
			cnt = FUNC5(sp, HMAP->lno, NULL);
			if (cnt < HMAP->soff)
				HMAP->soff = 1;
		}
		/* If we fail, just punt. */
		for (p = HMAP, cnt = sp->t_rows; --cnt; ++p)
			if (FUNC6(sp, p, p + 1))
				goto err;
		break;
	case P_MIDDLE:
		/* If we fail, guess that the file is too small. */
middle:		p = HMAP + sp->t_rows / 2;
		p->lno = lno;
		p->coff = 0;
		p->soff = 1;
		for (; p > HMAP; --p)
			if (FUNC8(sp, p, p - 1)) {
				lno = 1;
				goto top;
			}

		/* If we fail, just punt. */
		p = HMAP + sp->t_rows / 2;
		for (; p < TMAP; ++p)
			if (FUNC6(sp, p, p + 1))
				goto err;
		break;
	case P_BOTTOM:
		if (lno != OOBLNO) {
			TMAP->lno = lno;
			TMAP->coff = 0;
			TMAP->soff = FUNC5(sp, lno, NULL);
		}
		/* If we fail, guess that the file is too small. */
bottom:		for (p = TMAP; p > HMAP; --p)
			if (FUNC8(sp, p, p - 1)) {
				lno = 1;
				goto top;
			}
		break;
	default:
		FUNC3();
	}
	return (0);

	/*
	 * Try and put *something* on the screen.  If this fails, we have a
	 * serious hard error.
	 */
err:	HMAP->lno = 1;
	HMAP->coff = 0;
	HMAP->soff = 1;
	for (p = HMAP; p < TMAP; ++p)
		if (FUNC6(sp, p, p + 1))
			return (1);
	return (0);
}