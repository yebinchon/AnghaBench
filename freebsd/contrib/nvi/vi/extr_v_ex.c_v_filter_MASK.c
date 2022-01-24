#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_22__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int /*<<< orphan*/  lno; } ;
struct TYPE_26__ {int /*<<< orphan*/  lno; } ;
struct TYPE_24__ {int /*<<< orphan*/  cno; int /*<<< orphan*/  lno; } ;
struct TYPE_28__ {TYPE_3__ m_stop; TYPE_2__ m_start; TYPE_1__ m_final; int /*<<< orphan*/  rkp; } ;
typedef  TYPE_4__ VICMD ;
struct TYPE_31__ {int /*<<< orphan*/  argv; scalar_t__ argc; } ;
struct TYPE_30__ {int /*<<< orphan*/  cno; int /*<<< orphan*/  lno; int /*<<< orphan*/  tiq; } ;
struct TYPE_29__ {scalar_t__ term; int len; scalar_t__ lb; } ;
struct TYPE_25__ {int /*<<< orphan*/  args; scalar_t__ argsoff; } ;
typedef  TYPE_5__ TEXT ;
typedef  TYPE_6__ SCR ;
typedef  TYPE_7__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  C_BANG ; 
 TYPE_22__* FUNC0 (TYPE_6__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC3 (char*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TERM_OK ; 
 int TXT_BS ; 
 int TXT_CR ; 
 int TXT_ESCAPE ; 
 int TXT_FILEC ; 
 int TXT_PROMPT ; 
 int /*<<< orphan*/  VC_ISDOT ; 
 scalar_t__ FUNC5 (TYPE_6__*,TYPE_7__*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_6__*,TYPE_4__*,TYPE_7__*) ; 
 scalar_t__ FUNC8 (TYPE_6__*,TYPE_4__*,char,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 

int
FUNC10(SCR *sp, VICMD *vp)
{
	EXCMD cmd;
	TEXT *tp;

	/*
	 * !!!
	 * Historical vi permitted "!!" in an empty file, and it's handled
	 * as a special case in the ex_bang routine.  Don't modify this setup
	 * without understanding that one.  In particular, note that we're
	 * manipulating the ex argument structures behind ex's back.
	 *
	 * !!!
	 * Historical vi did not permit the '!' command to be associated with
	 * a non-line oriented motion command, in general, although it did
	 * with search commands.  So, !f; and !w would fail, but !/;<CR>
	 * would succeed, even if they all moved to the same location in the
	 * current line.  I don't see any reason to disallow '!' using any of
	 * the possible motion commands.
	 *
	 * !!!
	 * Historical vi ran the last bang command if N or n was used as the
	 * search motion.
	 */
	if (FUNC1(vp, VC_ISDOT) ||
	    FUNC2(vp->rkp, 'N') || FUNC2(vp->rkp, 'n')) {
		FUNC6(sp,
		    &cmd, C_BANG, 2, vp->m_start.lno, vp->m_stop.lno, 0);
		FUNC0(sp)->argsoff = 0;			/* XXX */

		if (FUNC5(sp, &cmd, FUNC3("!"), 1, 1))
			return (1);
		cmd.argc = FUNC0(sp)->argsoff;		/* XXX */
		cmd.argv = FUNC0(sp)->args;		/* XXX */
		return (FUNC7(sp, vp, &cmd));
	}

	/* Get the command from the user. */
	if (FUNC8(sp, vp,
	    '!', TXT_BS | TXT_CR | TXT_ESCAPE | TXT_FILEC | TXT_PROMPT))
		return (1);

	/*
	 * Check to see if the user changed their mind.
	 *
	 * !!!
	 * Entering <escape> on an empty line was historically an error,
	 * this implementation doesn't bother.
	 */
	tp = FUNC4(sp->tiq);
	if (tp->term != TERM_OK) {
		vp->m_final.lno = sp->lno;
		vp->m_final.cno = sp->cno;
		return (0);
	}

	/* Home the cursor. */
	FUNC9(sp);

	FUNC6(sp, &cmd, C_BANG, 2, vp->m_start.lno, vp->m_stop.lno, 0);
	FUNC0(sp)->argsoff = 0;			/* XXX */

	if (FUNC5(sp, &cmd, tp->lb + 1, tp->len - 1, 1))
		return (1);
	cmd.argc = FUNC0(sp)->argsoff;		/* XXX */
	cmd.argv = FUNC0(sp)->args;		/* XXX */
	return (FUNC7(sp, vp, &cmd));
}