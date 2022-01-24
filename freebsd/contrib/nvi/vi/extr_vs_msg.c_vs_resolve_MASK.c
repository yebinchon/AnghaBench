#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int totalcount; int linecount; int lcontinue; } ;
typedef  TYPE_1__ VI_PRIVATE ;
struct TYPE_29__ {int e_flno; int e_tlno; int /*<<< orphan*/  e_event; } ;
struct TYPE_28__ {struct TYPE_28__* buf; int /*<<< orphan*/  len; int /*<<< orphan*/  mtype; } ;
struct TYPE_27__ {int rows; int /*<<< orphan*/  (* scr_move ) (TYPE_2__*,size_t,size_t) ;int /*<<< orphan*/  msgq; int /*<<< orphan*/  (* scr_msg ) (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  lno; int /*<<< orphan*/  (* scr_bell ) (TYPE_2__*) ;int /*<<< orphan*/  (* scr_cursor ) (TYPE_2__*,size_t*,size_t*) ;struct TYPE_27__* gp; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ MSGS ;
typedef  TYPE_2__ GS ;
typedef  TYPE_5__ EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  E_REPAINT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_BELLSCHED ; 
 int /*<<< orphan*/  MSTAT_TRUNCATE ; 
 int /*<<< orphan*/  SCROLL_W ; 
 int /*<<< orphan*/  SC_SCR_VI ; 
 int /*<<< orphan*/  SC_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  VIP_CUR_INVALID ; 
 int /*<<< orphan*/  VIP_S_MODELINE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,size_t,size_t) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC17(SCR *sp, SCR *csp, int forcewait)
{
	EVENT ev;
	GS *gp;
	MSGS *mp;
	VI_PRIVATE *vip;
	size_t oldy, oldx;
	int redraw;

	/*
	 * Vs_resolve is called from the main vi loop and the refresh function
	 * to periodically ensure that the user has seen any messages that have
	 * been displayed and that any status lines are correct.  The sp screen
	 * is the screen we're checking, usually the current screen.  When it's
	 * not, csp is the current screen, used for final cursor positioning.
	 */
	gp = sp->gp;
	vip = FUNC6(sp);
	if (csp == NULL)
		csp = sp;

	/* Save the cursor position. */
	(void)gp->scr_cursor(csp, &oldy, &oldx);

	/* Ring the bell if it's scheduled. */
	if (FUNC1(gp, G_BELLSCHED)) {
		FUNC0(gp, G_BELLSCHED);
		(void)gp->scr_bell(sp);
	}

	/* Display new file status line. */
	if (FUNC1(sp, SC_STATUS)) {
		FUNC0(sp, SC_STATUS);
		FUNC9(sp, sp->lno, MSTAT_TRUNCATE);
	}

	/* Report on line modifications. */
	FUNC8(sp);

	/*
	 * Flush any saved messages.  If the screen isn't ready, refresh
	 * it.  (A side-effect of screen refresh is that we can display
	 * messages.)  Once this is done, don't trust the cursor.  That
	 * extra refresh screwed the pooch.
	 */
	if (!FUNC3(gp->msgq)) {
		if (!FUNC1(sp, SC_SCR_VI) && FUNC14(sp, 1))
			return (1);
		while ((mp = FUNC4(gp->msgq)) != NULL) {
			gp->scr_msg(sp, mp->mtype, mp->buf, mp->len);
			FUNC5(gp->msgq, q);
			FUNC7(mp->buf);
			FUNC7(mp);
		}
		FUNC2(vip, VIP_CUR_INVALID);
	}

	switch (vip->totalcount) {
	case 0:
		redraw = 0;
		break;
	case 1:
		/*
		 * If we're switching screens, we have to wait for messages,
		 * regardless.  If we don't wait, skip updating the modeline.
		 */
		if (forcewait)
			FUNC16(sp, NULL, SCROLL_W);
		else
			FUNC2(vip, VIP_S_MODELINE);

		redraw = 0;
		break;
	default:
		/*
		 * If >1 message line in use, prompt the user to continue and
		 * repaint overwritten lines.
		 */
		FUNC16(sp, NULL, SCROLL_W);

		ev.e_event = E_REPAINT;
		ev.e_flno = vip->totalcount >=
		    sp->rows ? 1 : sp->rows - vip->totalcount;
		ev.e_tlno = sp->rows;

		redraw = 1;
		break;
	}

	/* Reset the count of overwriting lines. */
	vip->linecount = vip->lcontinue = vip->totalcount = 0;

	/* Redraw. */
	if (redraw)
		(void)FUNC15(sp, &ev);

	/* Restore the cursor position. */
	(void)gp->scr_move(csp, oldy, oldx);

	return (0);
}