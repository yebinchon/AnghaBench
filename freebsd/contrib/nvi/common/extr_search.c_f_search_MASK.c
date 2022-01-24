#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_19__ {size_t rm_so; size_t rm_eo; } ;
typedef  TYPE_2__ regmatch_t ;
typedef  int recno_t ;
typedef  int /*<<< orphan*/  busy_t ;
struct TYPE_21__ {int lno; size_t cno; } ;
struct TYPE_20__ {TYPE_1__* gp; int /*<<< orphan*/  re_c; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* scr_bell ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ SCR ;
typedef  TYPE_4__ MARK ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  BUSY_OFF ; 
 int /*<<< orphan*/  BUSY_ON ; 
 int /*<<< orphan*/  BUSY_UPDATE ; 
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  FORWARD ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int INTERRUPT_CHECK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_WRAPSCAN ; 
 int REG_NOMATCH ; 
 int REG_NOTBOL ; 
 int REG_STARTEND ; 
 int /*<<< orphan*/  SEARCH_EOL ; 
 int /*<<< orphan*/  SEARCH_FILE ; 
 int /*<<< orphan*/  SEARCH_INCR ; 
 int /*<<< orphan*/  SEARCH_MSG ; 
 int /*<<< orphan*/  SEARCH_WMSG ; 
 int /*<<< orphan*/  S_EOF ; 
 int /*<<< orphan*/  S_NOTFOUND ; 
 int /*<<< orphan*/  S_WRAP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,size_t,size_t,...) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

int
FUNC11(
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
	size_t coff, len;
	int cnt, eval, rval, wrapped = 0;
	CHAR_T *l;

	if (FUNC8(sp, FORWARD, ptrn, plen, eptrn, flags))
		return (1);

	if (FUNC1(SEARCH_FILE)) {
		lno = 1;
		coff = 0;
	} else {
		if (FUNC4(sp, fm->lno, DBG_FATAL, &l, &len))
			return (1);
		lno = fm->lno;

		/*
		 * If doing incremental search, start searching at the previous
		 * column, so that we search a minimal distance and still match
		 * special patterns, e.g., \< for beginning of a word.
		 *
		 * Otherwise, start searching immediately after the cursor.  If
		 * at the end of the line, start searching on the next line.
		 * This is incompatible (read bug fix) with the historic vi --
		 * searches for the '$' pattern never moved forward, and the
		 * "-t foo" didn't work if the 'f' was the first character in
		 * the file.
		 */
		if (FUNC1(SEARCH_INCR)) {
			if ((coff = fm->cno) != 0)
				--coff;
		} else if (fm->cno + 1 >= len) {
			coff = 0;
			lno = fm->lno + 1;
			if (FUNC4(sp, lno, 0, &l, &len)) {
				if (!FUNC2(sp, O_WRAPSCAN)) {
					if (FUNC1(SEARCH_MSG))
						FUNC9(sp, S_EOF);
					return (1);
				}
				lno = 1;
				wrapped = 1;
			}
		} else
			coff = fm->cno + 1;
	}

	btype = BUSY_ON;
	for (cnt = INTERRUPT_CHECK, rval = 1;; ++lno, coff = 0) {
		if (cnt-- == 0) {
			if (FUNC0(sp))
				break;
			if (FUNC1(SEARCH_MSG)) {
				FUNC7(sp, btype);
				btype = BUSY_UPDATE;
			}
			cnt = INTERRUPT_CHECK;
		}
		if ((wrapped && lno > fm->lno) || FUNC4(sp, lno, 0, &l, &len)) {
			if (wrapped) {
				if (FUNC1(SEARCH_MSG))
					FUNC9(sp, S_NOTFOUND);
				break;
			}
			if (!FUNC2(sp, O_WRAPSCAN)) {
				if (FUNC1(SEARCH_MSG))
					FUNC9(sp, S_EOF);
				break;
			}
			lno = 0;
			wrapped = 1;
			continue;
		}

		/* If already at EOL, just keep going. */
		if (len != 0 && coff == len)
			continue;

		/* Set the termination. */
		match[0].rm_so = coff;
		match[0].rm_eo = len;

#if defined(DEBUG) && 0
		TRACE(sp, "F search: %lu from %u to %u\n",
		    lno, coff, len != 0 ? len - 1 : len);
#endif
		/* Search the line. */
		eval = FUNC6(&sp->re_c, l, 1, match,
		    (match[0].rm_so == 0 ? 0 : REG_NOTBOL) | REG_STARTEND);
		if (eval == REG_NOMATCH)
			continue;
		if (eval != 0) {
			if (FUNC1(SEARCH_MSG))
				FUNC5(sp, eval, &sp->re_c);
			else
				(void)sp->gp->scr_bell(sp);
			break;
		}

		/* Warn if the search wrapped. */
		if (wrapped && FUNC1(SEARCH_WMSG))
			FUNC9(sp, S_WRAP);

#if defined(DEBUG) && 0
		TRACE(sp, "F search: %qu to %qu\n",
		    match[0].rm_so, match[0].rm_eo);
#endif
		rm->lno = lno;
		rm->cno = match[0].rm_so;

		/*
		 * If a change command, it's possible to move beyond the end
		 * of a line.  Historic vi generally got this wrong (e.g. try
		 * "c?$<cr>").  Not all that sure this gets it right, there
		 * are lots of strange cases.
		 */
		if (!FUNC1(SEARCH_EOL) && rm->cno >= len)
			rm->cno = len != 0 ? len - 1 : 0;

		rval = 0;
		break;
	}

	if (FUNC1(SEARCH_MSG))
		FUNC7(sp, BUSY_OFF);
	return (rval);
}