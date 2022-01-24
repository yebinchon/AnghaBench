#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_19__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_37__ {scalar_t__ rvalue; int /*<<< orphan*/  rlast; } ;
typedef  TYPE_2__ VI_PRIVATE ;
struct TYPE_36__ {size_t cno; scalar_t__ lno; } ;
struct TYPE_35__ {size_t cno; scalar_t__ lno; } ;
struct TYPE_38__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_19__ m_start; } ;
typedef  TYPE_3__ VICMD ;
struct TYPE_41__ {int e_event; scalar_t__ e_value; int /*<<< orphan*/  e_c; } ;
struct TYPE_40__ {int /*<<< orphan*/  showmode; } ;
struct TYPE_39__ {size_t ai; int /*<<< orphan*/  len; int /*<<< orphan*/  lb; } ;
typedef  TYPE_4__ TEXT ;
typedef  TYPE_5__ SCR ;
typedef  TYPE_6__ EVENT ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FATAL ; 
#define  E_CHARACTER 133 
#define  E_EOF 132 
#define  E_ERR 131 
#define  E_INTERRUPT 130 
#define  E_REPAINT 129 
#define  E_WRESIZE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ K_CR ; 
 scalar_t__ K_ESCAPE ; 
 scalar_t__ K_NL ; 
 scalar_t__ K_VLNEXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  M_BERR ; 
 int /*<<< orphan*/  O_AUTOINDENT ; 
 scalar_t__ FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_EXIT_FORCE ; 
 int /*<<< orphan*/  SM_REPLACE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  VC_ISDOT ; 
 int /*<<< orphan*/  VIM_WRESIZE ; 
 TYPE_2__* FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC10 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 TYPE_4__* FUNC14 (TYPE_5__*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,TYPE_6__*) ; 
 scalar_t__ FUNC18 (TYPE_5__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC20 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,TYPE_6__*) ; 

int
FUNC22(SCR *sp, VICMD *vp)
{
	EVENT ev;
	VI_PRIVATE *vip;
	TEXT *tp;
	size_t blen, len;
	u_long cnt;
	int quote, rval;
	CHAR_T *bp;
	CHAR_T *p;

	vip = FUNC7(sp);

	/*
	 * If the line doesn't exist, or it's empty, replacement isn't
	 * allowed.  It's not hard to implement, but:
	 *
	 *	1: It's historic practice (vi beeped before the replacement
	 *	   character was even entered).
	 *	2: For consistency, this change would require that the more
	 *	   general case, "Nr", when the user is < N characters from
	 *	   the end of the line, also work, which would be a bit odd.
	 *	3: Replacing with a <newline> has somewhat odd semantics.
	 */
	if (FUNC9(sp, vp->m_start.lno, DBG_FATAL, &p, &len))
		return (1);
	if (len == 0) {
		FUNC12(sp, M_BERR, "186|No characters to replace");
		return (1);
	}

	/*
	 * Figure out how many characters to be replace.  For no particular
	 * reason (other than that the semantics of replacing the newline
	 * are confusing) only permit the replacement of the characters in
	 * the current line.  I suppose we could append replacement characters
	 * to the line, but I see no compelling reason to do so.  Check this
	 * before we get the character to match historic practice, where Nr
	 * failed immediately if there were less than N characters from the
	 * cursor to the end of the line.
	 */
	cnt = FUNC1(vp, VC_C1SET) ? vp->count : 1;
	vp->m_stop.lno = vp->m_start.lno;
	vp->m_stop.cno = vp->m_start.cno + cnt - 1;
	if (vp->m_stop.cno > len - 1) {
		FUNC16(sp, &vp->m_start);
		return (1);
	}

	/*
	 * If it's not a repeat, reset the current mode and get a replacement
	 * character.
	 */
	quote = 0;
	if (!FUNC1(vp, VC_ISDOT)) {
		sp->showmode = SM_REPLACE;
		if (FUNC20(sp, 0))
			return (1);
next:		if (FUNC18(sp, &ev, 0, 0))
			return (1);

		switch (ev.e_event) {
		case E_CHARACTER:
			/*
			 * <literal_next> means escape the next character.
			 * <escape> means they changed their minds.
			 */
			if (!quote) {
				if (ev.e_value == K_VLNEXT) {
					quote = 1;
					goto next;
				}
				if (ev.e_value == K_ESCAPE)
					return (0);
			}
			vip->rlast = ev.e_c;
			vip->rvalue = ev.e_value;
			break;
		case E_ERR:
		case E_EOF:
			FUNC2(sp, SC_EXIT_FORCE);
			return (1);
		case E_INTERRUPT:
			/* <interrupt> means they changed their minds. */
			return (0);
		case E_WRESIZE:
			/* <resize> interrupts the input mode. */
			FUNC15(sp, NULL, VIM_WRESIZE);
			return (0);
		case E_REPAINT:
			if (FUNC21(sp, &ev))
				return (1);
			goto next;
		default:
			FUNC17(sp, &ev);
			return (0);
		}
	}

	/* Copy the line. */
	FUNC3(sp, bp, blen, len);
	FUNC4(bp, p, len);
	p = bp;

	/*
	 * Versions of nvi before 1.57 created N new lines when they replaced
	 * N characters with <carriage-return> or <newline> characters.  This
	 * is different from the historic vi, which replaced N characters with
	 * a single new line.  Users complained, so we match historic practice.
	 */
	if ((!quote && vip->rvalue == K_CR) || vip->rvalue == K_NL) {
		/* Set return line. */
		vp->m_stop.lno = vp->m_start.lno + 1;
		vp->m_stop.cno = 0;

		/* The first part of the current line. */
		if (FUNC10(sp, vp->m_start.lno, p, vp->m_start.cno))
			goto err_ret;

		/*
		 * The rest of the current line.  And, of course, now it gets
		 * tricky.  If there are characters left in the line and if
		 * the autoindent edit option is set, white space after the
		 * replaced character is discarded, autoindent is applied, and
		 * the cursor moves to the last indent character.
		 */
		p += vp->m_start.cno + cnt;
		len -= vp->m_start.cno + cnt;
		if (len != 0 && FUNC5(sp, O_AUTOINDENT))
			for (; len && FUNC11(*p); --len, ++p);

		if ((tp = FUNC14(sp, p, len, len)) == NULL)
			goto err_ret;

		if (len != 0 && FUNC5(sp, O_AUTOINDENT)) {
			if (FUNC19(sp, vp->m_start.lno, NULL, 0, tp))
				goto err_ret;
			vp->m_stop.cno = tp->ai ? tp->ai - 1 : 0;
		} else
			vp->m_stop.cno = 0;

		vp->m_stop.cno = tp->ai ? tp->ai - 1 : 0;
		if (FUNC8(sp, 1, vp->m_start.lno, tp->lb, tp->len))
err_ret:		rval = 1;
		else {
			FUNC13(tp);
			rval = 0;
		}
	} else {
		FUNC6(bp + vp->m_start.cno, vip->rlast, cnt);
		rval = FUNC10(sp, vp->m_start.lno, bp, len);
	}
	FUNC0(sp, bp, blen);

	vp->m_final = vp->m_stop;
	return (rval);
}