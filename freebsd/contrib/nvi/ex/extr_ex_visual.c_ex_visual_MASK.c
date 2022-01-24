#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_19__ {int lno; } ;
struct TYPE_22__ {int /*<<< orphan*/  iflags; int /*<<< orphan*/  count; TYPE_1__ addr1; } ;
struct TYPE_21__ {int lno; TYPE_2__* ep; int /*<<< orphan*/  refcnt; struct TYPE_21__* frp; int /*<<< orphan*/  cno; } ;
struct TYPE_20__ {int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_3__ SCR ;
typedef  TYPE_4__ EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,size_t,int /*<<< orphan*/ *,size_t) ; 
 int CH_NOMAP ; 
 int CH_QUOTED ; 
#define  E_C_CARAT 134 
 int E_C_COUNT ; 
#define  E_C_DASH 133 
#define  E_C_DOT 132 
#define  E_C_HASH 131 
#define  E_C_LIST 130 
#define  E_C_PLUS 129 
#define  E_C_PRINT 128 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FR_CURSORSET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_LIST ; 
 int /*<<< orphan*/  O_NUMBER ; 
 int /*<<< orphan*/  O_OPEN ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int SC_EX ; 
 int /*<<< orphan*/  SC_EX_GLOBAL ; 
 int /*<<< orphan*/  SC_EX_WAIT_NO ; 
 int SC_SCR_EX ; 
 int /*<<< orphan*/  SC_SCR_EXWROTE ; 
 int /*<<< orphan*/  SC_VI ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 size_t FUNC11 (char*,int,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 
 scalar_t__ FUNC13 (TYPE_3__**) ; 

int
FUNC14(SCR *sp, EXCMD *cmdp)
{
	SCR *tsp;
	size_t len;
	int pos;
	char buf[256];
	size_t wlen;
	CHAR_T *wp;

	/* If open option off, disallow visual command. */
	if (!FUNC5(sp, O_OPEN)) {
		FUNC9(sp, M_ERR,
	    "175|The visual command requires that the open option be set");
		return (1);
	}

	/* Move to the address. */
	sp->lno = cmdp->addr1.lno == 0 ? 1 : cmdp->addr1.lno;

	/*
	 * Push a command based on the line position flags.  If no
	 * flag specified, the line goes at the top of the screen.
	 */
	switch (FUNC1(cmdp->iflags,
	    E_C_CARAT | E_C_DASH | E_C_DOT | E_C_PLUS)) {
	case E_C_CARAT:
		pos = '^';
		break;
	case E_C_DASH:
		pos = '-';
		break;
	case E_C_DOT:
		pos = '.';
		break;
	case E_C_PLUS:
		pos = '+';
		break;
	default:
		sp->frp->lno = sp->lno;
		sp->frp->cno = 0;
		(void)FUNC10(sp, sp->lno, &sp->cno);
		FUNC4(sp->frp, FR_CURSORSET);
		goto nopush;
	}

	if (FUNC1(cmdp->iflags, E_C_COUNT))
		len = FUNC11(buf, sizeof(buf),
		     "%luz%c%lu", (u_long)sp->lno, pos, cmdp->count);
	else
		len = FUNC11(buf, sizeof(buf), "%luz%c", (u_long)sp->lno, pos);
	FUNC0(sp, buf, len, wp, wlen);
	(void)FUNC12(sp, NULL, wp, wlen, CH_NOMAP | CH_QUOTED);

	/*
	 * !!!
	 * Historically, if no line address was specified, the [p#l] flags
	 * caused the cursor to be moved to the last line of the file, which
	 * was then positioned as described above.  This seems useless, so
	 * I haven't implemented it.
	 */
	switch (FUNC1(cmdp->iflags, E_C_HASH | E_C_LIST | E_C_PRINT)) {
	case E_C_HASH:
		FUNC6(sp, O_NUMBER);
		break;
	case E_C_LIST:
		FUNC6(sp, O_LIST);
		break;
	case E_C_PRINT:
		break;
	}

nopush:	/*
	 * !!!
	 * You can call the visual part of the editor from within an ex
	 * global command.
	 *
	 * XXX
	 * Historically, undoing a visual session was a single undo command,
	 * i.e. you could undo all of the changes you made in visual mode.
	 * We don't get this right; I'm waiting for the new logging code to
	 * be available.
	 *
	 * It's explicit, don't have to wait for the user, unless there's
	 * already a reason to wait.
	 */
	if (!FUNC3(sp, SC_SCR_EXWROTE))
		FUNC4(sp, SC_EX_WAIT_NO);

	if (FUNC3(sp, SC_EX_GLOBAL)) {
		/*
		 * When the vi screen(s) exit, we don't want to lose our hold
		 * on this screen or this file, otherwise we're going to fail
		 * fairly spectacularly.
		 */
		++sp->refcnt;
		++sp->ep->refcnt;
		/* XXXX where is this decremented ? */

		/*
		 * Fake up a screen pointer -- vi doesn't get to change our
		 * underlying file, regardless.
		 */
		tsp = sp;
		if (FUNC13(&tsp))
			return (1);

		/*
		 * !!!
		 * Historically, if the user exited the vi screen(s) using an
		 * ex quit command (e.g. :wq, :q) ex/vi exited, it was only if
		 * they exited vi using the Q command that ex continued.  Some
		 * early versions of nvi continued in ex regardless, but users
		 * didn't like the semantic.
		 *
		 * Reset the screen.
		 */
		if (FUNC7(sp))
			return (1);

		/* Move out of the vi screen. */
		(void)FUNC8(sp, "\n");
	} else {
		FUNC2(sp, SC_EX | SC_SCR_EX);
		FUNC4(sp, SC_VI);
	}
	return (0);
}