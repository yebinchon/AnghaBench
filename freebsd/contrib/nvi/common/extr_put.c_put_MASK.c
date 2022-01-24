#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int recno_t ;
struct TYPE_31__ {int /*<<< orphan*/  textq; } ;
struct TYPE_30__ {int lno; int cno; } ;
struct TYPE_29__ {int cno; int rptlchange; int /*<<< orphan*/ * rptlines; TYPE_1__* gp; } ;
struct TYPE_28__ {size_t len; int /*<<< orphan*/ * lb; } ;
struct TYPE_27__ {TYPE_5__* dcbp; } ;
typedef  TYPE_2__ TEXT ;
typedef  TYPE_3__ SCR ;
typedef  TYPE_4__ MARK ;
typedef  int /*<<< orphan*/  CHAR_T ;
typedef  TYPE_5__ CB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CB_LMODE ; 
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 size_t L_ADDED ; 
 size_t L_CHANGED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  M_ERR ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _texth ; 
 scalar_t__ FUNC10 (TYPE_3__*,int,int,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC11 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int*) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int,int*) ; 
 int /*<<< orphan*/  q ; 

int
FUNC16(
	SCR *sp,
	CB *cbp,
	CHAR_T *namep,
	MARK *cp,
	MARK *rp,
	int append)
{
	CHAR_T name;
	TEXT *ltp, *tp;
	recno_t lno;
	size_t blen, clen, len;
	int rval;
	CHAR_T *bp, *t;
	CHAR_T *p;

	if (cbp == NULL)
		if (namep == NULL) {
			cbp = sp->gp->dcbp;
			if (cbp == NULL) {
				FUNC14(sp, M_ERR,
				    "053|The default buffer is empty");
				return (1);
			}
		} else {
			name = *namep;
			FUNC1(sp, cbp, name);
			if (cbp == NULL) {
				FUNC14(sp, M_ERR, "054|Buffer %s is empty",
				    FUNC5(sp, name));
				return (1);
			}
		}
	tp = FUNC7(cbp->textq);

	/*
	 * It's possible to do a put into an empty file, meaning that the cut
	 * buffer simply becomes the file.  It's a special case so that we can
	 * ignore it in general.
	 *
	 * !!!
	 * Historically, pasting into a file with no lines in vi would preserve
	 * the single blank line.  This is surely a result of the fact that the
	 * historic vi couldn't deal with a file that had no lines in it.  This
	 * implementation treats that as a bug, and does not retain the blank
	 * line.
	 *
	 * Historical practice is that the cursor ends at the first character
	 * in the file.
	 */
	if (cp->lno == 1) {
		if (FUNC12(sp, &lno))
			return (1);
		if (lno == 0) {
			for (; tp != NULL;
			    ++lno, ++sp->rptlines[L_ADDED], tp = FUNC9(tp, q))
				if (FUNC10(sp, 1, lno, tp->lb, tp->len))
					return (1);
			rp->lno = 1;
			rp->cno = 0;
			return (0);
		}
	}

	/* If a line mode buffer, append each new line into the file. */
	if (FUNC3(cbp, CB_LMODE)) {
		lno = append ? cp->lno : cp->lno - 1;
		rp->lno = lno + 1;
		for (; tp != NULL;
		    ++lno, ++sp->rptlines[L_ADDED], tp = FUNC9(tp, q))
			if (FUNC10(sp, 1, lno, tp->lb, tp->len))
				return (1);
		rp->cno = 0;
		(void)FUNC15(sp, rp->lno, &rp->cno);
		return (0);
	}

	/*
	 * If buffer was cut in character mode, replace the current line with
	 * one built from the portion of the first line to the left of the
	 * split plus the first line in the CB.  Append each intermediate line
	 * in the CB.  Append a line built from the portion of the first line
	 * to the right of the split plus the last line in the CB.
	 *
	 * Get the first line.
	 */
	lno = cp->lno;
	if (FUNC11(sp, lno, DBG_FATAL, &p, &len))
		return (1);

	FUNC4(sp, bp, blen, tp->len + len + 1);
	t = bp;

	/* Original line, left of the split. */
	if (len > 0 && (clen = cp->cno + (append ? 1 : 0)) > 0) {
		FUNC6(bp, p, clen);
		p += clen;
		t += clen;
	}

	/* First line from the CB. */
	if (tp->len != 0) {
		FUNC6(t, tp->lb, tp->len);
		t += tp->len;
	}

	/* Calculate length left in the original line. */
	clen = len == 0 ? 0 : len - (cp->cno + (append ? 1 : 0));

	/*
	 * !!!
	 * In the historical 4BSD version of vi, character mode puts within
	 * a single line have two cursor behaviors: if the put is from the
	 * unnamed buffer, the cursor moves to the character inserted which
	 * appears last in the file.  If the put is from a named buffer,
	 * the cursor moves to the character inserted which appears first
	 * in the file.  In System III/V, it was changed at some point and
	 * the cursor always moves to the first character.  In both versions
	 * of vi, character mode puts that cross line boundaries leave the
	 * cursor on the first character.  Nvi implements the System III/V
	 * behavior, and expect POSIX.2 to do so as well.
	 */
	rp->lno = lno;
	rp->cno = len == 0 ? 0 : sp->cno + (append && tp->len ? 1 : 0);

	/*
	 * If no more lines in the CB, append the rest of the original
	 * line and quit.  Otherwise, build the last line before doing
	 * the intermediate lines, because the line changes will lose
	 * the cached line.
	 */
	if (FUNC9(tp, q) == NULL) {
		if (clen > 0) {
			FUNC6(t, p, clen);
			t += clen;
		}
		if (FUNC13(sp, lno, bp, t - bp))
			goto err;
		if (sp->rptlchange != lno) {
			sp->rptlchange = lno;
			++sp->rptlines[L_CHANGED];
		}
	} else {
		/*
		 * Have to build both the first and last lines of the
		 * put before doing any sets or we'll lose the cached
		 * line.  Build both the first and last lines in the
		 * same buffer, so we don't have to have another buffer
		 * floating around.
		 *
		 * Last part of original line; check for space, reset
		 * the pointer into the buffer.
		 */
		ltp = FUNC8(cbp->textq, _texth);
		len = t - bp;
		FUNC0(sp, bp, blen, ltp->len + clen);
		t = bp + len;

		/* Add in last part of the CB. */
		FUNC6(t, ltp->lb, ltp->len);
		if (clen)
			FUNC6(t + ltp->len, p, clen);
		clen += ltp->len;

		/*
		 * Now: bp points to the first character of the first
		 * line, t points to the last character of the last
		 * line, t - bp is the length of the first line, and
		 * clen is the length of the last.  Just figured you'd
		 * want to know.
		 *
		 * Output the line replacing the original line.
		 */
		if (FUNC13(sp, lno, bp, t - bp))
			goto err;
		if (sp->rptlchange != lno) {
			sp->rptlchange = lno;
			++sp->rptlines[L_CHANGED];
		}

		/* Output any intermediate lines in the CB. */
		for (tp = FUNC9(tp, q); FUNC9(tp, q) != NULL;
		    ++lno, ++sp->rptlines[L_ADDED], tp = FUNC9(tp, q))
			if (FUNC10(sp, 1, lno, tp->lb, tp->len))
				goto err;

		if (FUNC10(sp, 1, lno, t, clen))
			goto err;
		++sp->rptlines[L_ADDED];
	}
	rval = 0;

	if (0)
err:		rval = 1;

	FUNC2(sp, bp, blen);
	return (rval);
}