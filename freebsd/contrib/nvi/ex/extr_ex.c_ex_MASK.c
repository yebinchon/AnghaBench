#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_25__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_33__ {struct TYPE_33__* buf; int /*<<< orphan*/  len; int /*<<< orphan*/  mtype; } ;
struct TYPE_31__ {int if_lno; char* if_name; int clen; int /*<<< orphan*/  cp; } ;
struct TYPE_32__ {TYPE_25__ excmd; int /*<<< orphan*/  tiq; int /*<<< orphan*/  lno; int /*<<< orphan*/  msgq; int /*<<< orphan*/  (* scr_msg ) (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ;struct TYPE_32__* gp; } ;
struct TYPE_30__ {int len; int /*<<< orphan*/  lb; } ;
typedef  TYPE_1__ TEXT ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ MSGS ;
typedef  TYPE_2__ GS ;
typedef  int /*<<< orphan*/  EX_PRIVATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_25__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  E_NRSEP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_25__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int) ; 
 int G_SCRIPTED ; 
 int G_SRESTART ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  O_BEAUTIFY ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_PROMPT ; 
 int SC_EXIT ; 
 int SC_EXIT_FORCE ; 
 int SC_EX_SILENT ; 
 int SC_FSWITCH ; 
 int SC_SSWITCH ; 
 int SC_STATUS ; 
 int SC_VI ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ) ; 
 int TXT_BACKSLASH ; 
 int /*<<< orphan*/  TXT_BEAUTIFY ; 
 int TXT_CNTRLD ; 
 int TXT_CR ; 
 int /*<<< orphan*/  TXT_PROMPT ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q ; 
 int FUNC23 (TYPE_2__*) ; 
 TYPE_2__* FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC26(SCR **spp)
{
	EX_PRIVATE *exp;
	GS *gp;
	MSGS *mp;
	SCR *sp;
	TEXT *tp;
	u_int32_t flags;

	sp = *spp;
	gp = sp->gp;
	exp = FUNC2(sp);

	/* Start the ex screen. */
	if (FUNC16(sp))
		return (1);

	/* Flush any saved messages. */
	while ((mp = FUNC11(gp->msgq)) != NULL) {
		gp->scr_msg(sp, mp->mtype, mp->buf, mp->len);
		FUNC12(gp->msgq, q);
		FUNC20(mp->buf);
		FUNC20(mp);
	}

	/* If reading from a file, errors should have name and line info. */
	if (FUNC5(gp, G_SCRIPTED)) {
		gp->excmd.if_lno = 1;
		gp->excmd.if_name = "script";
	}

	/*
	 * !!!
	 * Initialize the text flags.  The beautify edit option historically
	 * applied to ex command input read from a file.  In addition, the
	 * first time a ^H was discarded from the input, there was a message,
	 * "^H discarded", that was displayed.  We don't bother.
	 */
	FUNC8(TXT_BACKSLASH | TXT_CNTRLD | TXT_CR);
	for (;; ++gp->excmd.if_lno) {
		/* Display status line and flush. */
		if (FUNC5(sp, SC_STATUS)) {
			if (!FUNC5(sp, SC_EX_SILENT))
				FUNC22(sp, sp->lno, 0);
			FUNC3(sp, SC_STATUS);
		}
		(void)FUNC15(sp);

		/* Set the flags the user can reset. */
		if (FUNC10(sp, O_BEAUTIFY))
			FUNC9(TXT_BEAUTIFY);
		if (FUNC10(sp, O_PROMPT))
			FUNC9(TXT_PROMPT);

		/* Clear any current interrupts, and get a command. */
		FUNC1(sp);
		if (FUNC18(sp, sp->tiq, ':', flags))
			return (1);
		if (FUNC6(sp)) {
			(void)FUNC17(sp, "\n");
			(void)FUNC15(sp);
			continue;
		}

		/* Initialize the command structure. */
		FUNC0(&gp->excmd);

		/*
		 * If the user entered a single carriage return, send
		 * ex_cmd() a separator -- it discards single newlines.
		 */
		tp = FUNC13(sp->tiq);
		if (tp->len == 0) {
			gp->excmd.cp = FUNC7(" ");	/* __TK__ why not |? */
			gp->excmd.clen = 1;
		} else {
			gp->excmd.cp = tp->lb;
			gp->excmd.clen = tp->len;
		}
		FUNC4(&gp->excmd, E_NRSEP);

		if (FUNC14(sp) && FUNC5(gp, G_SCRIPTED))
			return (1);

		if (FUNC6(sp)) {
			FUNC1(sp);
			FUNC21(sp, M_ERR, "170|Interrupted");
		}

		/*
		 * If the last command caused a restart, or switched screens
		 * or into vi, return.
		 */
		if (FUNC5(gp, G_SRESTART) || FUNC5(sp, SC_SSWITCH | SC_VI)) {
			*spp = sp;
			break;
		}

		/* If the last command switched files, we don't care. */
		FUNC3(sp, SC_FSWITCH);

		/*
		 * If we're exiting this screen, move to the next one.  By
		 * definition, this means returning into vi, so return to the
		 * main editor loop.  The ordering is careful, don't discard
		 * the contents of sp until the end.
		 */
		if (FUNC5(sp, SC_EXIT | SC_EXIT_FORCE)) {
			if (FUNC19(sp, NULL, FUNC5(sp, SC_EXIT_FORCE)))
				return (1);
			*spp = FUNC24(sp);
			return (FUNC23(sp));
		}
	}
	return (0);
}