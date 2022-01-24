#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_21__ {size_t rm_so; size_t rm_eo; } ;
typedef  TYPE_2__ regmatch_t ;
typedef  int recno_t ;
typedef  int /*<<< orphan*/  busy_t ;
struct TYPE_23__ {int lno; int cno; } ;
struct TYPE_22__ {TYPE_1__* gp; int /*<<< orphan*/  re_c; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* scr_bell ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ SCR ;
typedef  TYPE_4__ MARK ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  BACKWARD ; 
 int /*<<< orphan*/  BUSY_OFF ; 
 int /*<<< orphan*/  BUSY_ON ; 
 int /*<<< orphan*/  BUSY_UPDATE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int INTERRUPT_CHECK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_WRAPSCAN ; 
 int REG_NOMATCH ; 
 int REG_NOTBOL ; 
 int REG_NOTEOL ; 
 int REG_STARTEND ; 
 int /*<<< orphan*/  SEARCH_EOL ; 
 int /*<<< orphan*/  SEARCH_INCR ; 
 int /*<<< orphan*/  SEARCH_MSG ; 
 int /*<<< orphan*/  SEARCH_WMSG ; 
 int /*<<< orphan*/  S_EMPTY ; 
 int /*<<< orphan*/  S_NOTFOUND ; 
 int /*<<< orphan*/  S_SOF ; 
 int /*<<< orphan*/  S_WRAP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int,size_t) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

int
FUNC13(
	SCR *sp,
	MARK *fm,
	MARK *rm,
	CHAR_T *ptrn,
	size_t plen,
	CHAR_T **eptrn,
	u_int flags)
{
	busy_t btype;
	recno_t lno;
	regmatch_t match[1];
	size_t coff, last, len;
	int cnt, eval, rval, wrapped;
	CHAR_T *l;

	if (FUNC9(sp, BACKWARD, ptrn, plen, eptrn, flags))
		return (1);

	/*
	 * If doing incremental search, set the "starting" position past the
	 * current column, so that we search a minimal distance and still
	 * match special patterns, e.g., \> for the end of a word.  This is
	 * safe when the cursor is at the end of a line because we only use
	 * it for comparison with the location of the match.
	 *
	 * Otherwise, start searching immediately before the cursor.  If in
	 * the first column, start search on the previous line.
	 */
	if (FUNC1(SEARCH_INCR)) {
		lno = fm->lno;
		coff = fm->cno + 1;
	} else {
		if (fm->cno == 0) {
			if (fm->lno == 1 && !FUNC2(sp, O_WRAPSCAN)) {
				if (FUNC1(SEARCH_MSG))
					FUNC10(sp, S_SOF);
				return (1);
			}
			lno = fm->lno - 1;
		} else
			lno = fm->lno;
		coff = fm->cno;
	}

	btype = BUSY_ON;
	for (cnt = INTERRUPT_CHECK, rval = 1, wrapped = 0;; --lno, coff = 0) {
		if (cnt-- == 0) {
			if (FUNC0(sp))
				break;
			if (FUNC1(SEARCH_MSG)) {
				FUNC8(sp, btype);
				btype = BUSY_UPDATE;
			}
			cnt = INTERRUPT_CHECK;
		}
		if ((wrapped && lno < fm->lno) || lno == 0) {
			if (wrapped) {
				if (FUNC1(SEARCH_MSG))
					FUNC10(sp, S_NOTFOUND);
				break;
			}
			if (!FUNC2(sp, O_WRAPSCAN)) {
				if (FUNC1(SEARCH_MSG))
					FUNC10(sp, S_SOF);
				break;
			}
			if (FUNC5(sp, &lno))
				break;
			if (lno == 0) {
				if (FUNC1(SEARCH_MSG))
					FUNC10(sp, S_EMPTY);
				break;
			}
			++lno;
			wrapped = 1;
			continue;
		}

		if (FUNC4(sp, lno, 0, &l, &len))
			break;

		/* Set the termination. */
		match[0].rm_so = 0;
		match[0].rm_eo = len;

#if defined(DEBUG) && 0
		TRACE(sp, "B search: %lu from 0 to %qu\n", lno, match[0].rm_eo);
#endif
		/* Search the line. */
		eval = FUNC7(&sp->re_c, l, 1, match,
		    (match[0].rm_eo == len ? 0 : REG_NOTEOL) | REG_STARTEND);
		if (eval == REG_NOMATCH)
			continue;
		if (eval != 0) {
			if (FUNC1(SEARCH_MSG))
				FUNC6(sp, eval, &sp->re_c);
			else
				(void)sp->gp->scr_bell(sp);
			break;
		}

		/* Check for a match starting past the cursor. */
		if (coff != 0 && match[0].rm_so >= coff)
			continue;

		/* Warn if the search wrapped. */
		if (wrapped && FUNC1(SEARCH_WMSG))
			FUNC10(sp, S_WRAP);

#if defined(DEBUG) && 0
		TRACE(sp, "B found: %qu to %qu\n",
		    match[0].rm_so, match[0].rm_eo);
#endif
		/*
		 * We now have the first match on the line.  Step through the
		 * line character by character until find the last acceptable
		 * match.  This is painful, we need a better interface to regex
		 * to make this work.
		 */
		for (;;) {
			last = match[0].rm_so++;
			if (match[0].rm_so >= len)
				break;
			match[0].rm_eo = len;
			eval = FUNC7(&sp->re_c, l, 1, match,
			    (match[0].rm_so == 0 ? 0 : REG_NOTBOL) |
			    REG_STARTEND);
			if (eval == REG_NOMATCH)
				break;
			if (eval != 0) {
				if (FUNC1(SEARCH_MSG))
					FUNC6(sp, eval, &sp->re_c);
				else
					(void)sp->gp->scr_bell(sp);
				goto err;
			}
			if (coff && match[0].rm_so >= coff)
				break;
		}
		rm->lno = lno;

		/* See comment in f_search(). */
		if (!FUNC1(SEARCH_EOL) && last >= len)
			rm->cno = len != 0 ? len - 1 : 0;
		else
			rm->cno = last;
		rval = 0;
		break;
	}

err:	if (FUNC1(SEARCH_MSG))
		FUNC8(sp, BUSY_OFF);
	return (rval);
}