#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ recno_t ;
struct TYPE_19__ {TYPE_1__* gp; } ;
struct TYPE_18__ {scalar_t__ lno; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* scr_move ) (TYPE_3__*,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ SMAP ;
typedef  TYPE_3__ SCR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 TYPE_2__* HMAP ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_LEFTRIGHT ; 
 TYPE_2__* TMAP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,size_t) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_3__*,TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC7(SCR *sp, recno_t lno)
{
	SMAP *p, *t;
	size_t cnt_orig;

	/*
	 * Find the line in the map, and count the number of screen lines
	 * which display any part of the deleted line.
	 */
	for (p = HMAP; p->lno != lno; ++p);
	if (FUNC1(sp, O_LEFTRIGHT))
		cnt_orig = 1;
	else
		for (cnt_orig = 1, t = p + 1;
		    t <= TMAP && t->lno == lno; ++cnt_orig, ++t);

	FUNC0(cnt_orig);

	/* Delete that many lines from the screen. */
	(void)sp->gp->scr_move(sp, p - HMAP, 0);
	if (FUNC4(sp, cnt_orig))
		return (1);

	/* Shift the screen map up. */
	FUNC2(p, p + cnt_orig, (((TMAP - p) - cnt_orig) + 1) * sizeof(SMAP));

	/* Decrement the line numbers for the rest of the map. */
	for (t = TMAP - cnt_orig; p <= t; ++p)
		--p->lno;

	/* Display the new lines. */
	for (p = TMAP - cnt_orig;;) {
		if (p < TMAP && FUNC6(sp, p, p + 1))
			return (1);
		/* vs_sm_next() flushed the cache. */
		if (FUNC5(sp, ++p, NULL, NULL))
			return (1);
		if (p == TMAP)
			break;
	}
	return (0);
}