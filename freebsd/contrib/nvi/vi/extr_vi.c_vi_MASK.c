#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_66__   TYPE_8__ ;
typedef  struct TYPE_65__   TYPE_5__ ;
typedef  struct TYPE_64__   TYPE_4__ ;
typedef  struct TYPE_63__   TYPE_3__ ;
typedef  struct TYPE_62__   TYPE_2__ ;
typedef  struct TYPE_61__   TYPE_21__ ;
typedef  struct TYPE_60__   TYPE_1__ ;

/* Type definitions */
struct TYPE_62__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_63__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_60__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_65__ {int flags; scalar_t__ lno; scalar_t__ cno; int count; int /*<<< orphan*/  (* scr_discard ) (TYPE_5__*,int /*<<< orphan*/ *) ;TYPE_4__* frp; int /*<<< orphan*/  (* scr_rename ) (TYPE_5__*,int /*<<< orphan*/ ,int) ;struct TYPE_65__* gp; struct TYPE_65__* nextdisp; TYPE_2__ m_final; scalar_t__ (* func ) (TYPE_5__*,TYPE_5__*) ;struct TYPE_65__* kp; int /*<<< orphan*/  ccnt; TYPE_3__ m_stop; TYPE_1__ m_start; int /*<<< orphan*/  key; int /*<<< orphan*/  rcm; int /*<<< orphan*/  showmode; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ VI_PRIVATE ;
typedef  TYPE_5__ VICMD ;
struct TYPE_66__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_64__ {int /*<<< orphan*/  name; } ;
struct TYPE_61__ {int count; } ;
typedef  TYPE_5__ SCR ;
typedef  TYPE_8__ MARK ;
typedef  TYPE_5__ GS ;

/* Variables and functions */
 int /*<<< orphan*/  ABSMARK1 ; 
 int /*<<< orphan*/  CH_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 TYPE_5__* DOT ; 
 TYPE_21__* DOTMOTION ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  EXM_SECURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int) ; 
#define  GC_ERR 138 
#define  GC_ERR_NOFLUSH 137 
#define  GC_EVENT 136 
#define  GC_FATAL 135 
#define  GC_INTERRUPT 134 
#define  GC_OK 133 
 int G_SRESTART ; 
 int G_TMP_INUSE ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  M_BERR ; 
 int /*<<< orphan*/  M_ERR ; 
 scalar_t__ FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_SECURE ; 
 int SC_EX ; 
 int SC_EXIT ; 
 int SC_EXIT_FORCE ; 
 int SC_FSWITCH ; 
 int SC_SSWITCH ; 
 int SC_STATUS ; 
 int /*<<< orphan*/  SM_COMMAND ; 
 int VC_C1RESET ; 
 int VC_C1SET ; 
 int VC_ISDOT ; 
 TYPE_5__* FUNC9 (TYPE_5__*) ; 
 int VIP_CUR_INVALID ; 
 int VIP_RCM_LAST ; 
 int VIP_S_REFRESH ; 
 int VM_COMMASK ; 
 int VM_LMODE ; 
#define  VM_RCM 132 
 int VM_RCM_MASK ; 
#define  VM_RCM_SET 131 
#define  VM_RCM_SETFNB 130 
#define  VM_RCM_SETLAST 129 
#define  VM_RCM_SETNNB 128 
 int V_ABS ; 
 int V_ABS_C ; 
 int V_ABS_L ; 
 int V_DOT ; 
 int V_MOTION ; 
 int V_SECURE ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (TYPE_5__*) ; 
 scalar_t__ FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC25 (TYPE_5__*,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*) ; 
 scalar_t__ FUNC28 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (TYPE_5__*) ; 
 scalar_t__ FUNC30 (TYPE_5__*,TYPE_21__*,TYPE_5__*,int*) ; 
 TYPE_5__* vikeys ; 
 int /*<<< orphan*/  FUNC31 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 (TYPE_5__*,TYPE_5__**) ; 
 scalar_t__ FUNC33 (TYPE_5__*,scalar_t__,int) ; 
 scalar_t__ FUNC34 (TYPE_5__*,int) ; 
 scalar_t__ FUNC35 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (TYPE_5__*,TYPE_5__**,int /*<<< orphan*/ *) ; 

int
FUNC37(SCR **spp)
{
	GS *gp;
	MARK abs;
	SCR *next, *sp;
	VICMD cmd = { 0 }, *vp;
	VI_PRIVATE *vip;
	int comcount, mapped, rval;

	/* Get the first screen. */
	sp = *spp;
	gp = sp->gp;

	/* Point to the command structure. */
	vp = &cmd;

	/* Reset strange attraction. */
	FUNC4(vp, VM_RCM_SET);

	/* Initialize the vi screen. */
	if (FUNC29(sp))
		return (1);

	/* Set the focus. */
	(void)sp->gp->scr_rename(sp, sp->frp->name, 1);

	for (vip = FUNC9(sp), rval = 0;;) {
		/* Resolve messages. */
		if (!FUNC7(sp) && FUNC35(sp, NULL, 0))
			goto ret;

		/*
		 * If not skipping a refresh, return to command mode and
		 * refresh the screen.
		 */
		if (FUNC3(vip, VIP_S_REFRESH))
			FUNC2(vip, VIP_S_REFRESH);
		else {
			sp->showmode = SM_COMMAND;
			if (FUNC34(sp, 0))
				goto ret;
		}

		/* Set the new favorite position. */
		if (FUNC3(vp, VM_RCM_SET | VM_RCM_SETFNB | VM_RCM_SETNNB)) {
			FUNC2(vip, VIP_RCM_LAST);
			(void)FUNC31(sp, &sp->rcm);
		}

		/*
		 * If not currently in a map, log the cursor position,
		 * and set a flag so that this command can become the
		 * DOT command.
		 */
		if (FUNC7(sp))
			mapped = 1;
		else {
			if (FUNC13(sp))
				goto err;
			mapped = 0;
		}

		/*
		 * There may be an ex command waiting, and we returned here
		 * only because we exited a screen or file.  In this case,
		 * we simply go back into the ex parser.
		 */
		if (FUNC1(gp)) {
			vp->kp = &vikeys[':'];
			goto ex_continue;
		}

		/* Refresh the command structure. */
		FUNC15(vp, 0, sizeof(VICMD));

		/*
		 * We get a command, which may or may not have an associated
		 * motion.  If it does, we get it too, calling its underlying
		 * function to get the resulting mark.  We then call the
		 * command setting the cursor to the resulting mark.
		 *
		 * !!!
		 * Vi historically flushed mapped characters on error, but
		 * entering extra <escape> characters at the beginning of
		 * a map wasn't considered an error -- in fact, users would
		 * put leading <escape> characters in maps to clean up vi
		 * state before the map was interpreted.  Beauty!
		 */
		switch (FUNC25(sp, DOT, vp, NULL, &comcount, &mapped)) {
		case GC_ERR:
			goto err;
		case GC_ERR_NOFLUSH:
			goto gc_err_noflush;
		case GC_EVENT:
			goto gc_event;
		case GC_FATAL:
			goto ret;
		case GC_INTERRUPT:
			goto intr;
		case GC_OK:
			break;
		}

		/* Check for security setting. */
		if (FUNC3(vp->kp, V_SECURE) && FUNC8(sp, O_SECURE)) {
			FUNC11(sp, FUNC6(sp, vp->key), EXM_SECURE);
			goto err;
		}

		/*
		 * Historical practice: if a dot command gets a new count,
		 * any motion component goes away, i.e. "d3w2." deletes a
		 * total of 5 words.
		 */
		if (FUNC3(vp, VC_ISDOT) && comcount)
			DOTMOTION->count = 1;

		/* Copy the key flags into the local structure. */
		FUNC4(vp, vp->kp->flags);

		/* Prepare to set the previous context. */
		if (FUNC3(vp, V_ABS | V_ABS_C | V_ABS_L)) {
			abs.lno = sp->lno;
			abs.cno = sp->cno;
		}

		/*
		 * Set the three cursor locations to the current cursor.  The
		 * underlying routines don't bother if the cursor doesn't move.
		 * This also handles line commands (e.g. Y) defaulting to the
		 * current line.
		 */
		vp->m_start.lno = vp->m_stop.lno = vp->m_final.lno = sp->lno;
		vp->m_start.cno = vp->m_stop.cno = vp->m_final.cno = sp->cno;

		/*
		 * Do any required motion; v_motion sets the from MARK and the
		 * line mode flag, as well as the VM_RCM flags.
		 */
		if (FUNC3(vp, V_MOTION) &&
		    FUNC30(sp, DOTMOTION, vp, &mapped)) {
			if (FUNC5(sp))
				goto intr;
			goto err;
		}

		/*
		 * If a count is set and the command is line oriented, set the
		 * to MARK here relative to the cursor/from MARK.  This is for
		 * commands that take both counts and motions, i.e. "4yy" and
		 * "y%".  As there's no way the command can know which the user
		 * did, we have to do it here.  (There are commands that are
		 * line oriented and that take counts ("#G", "#H"), for which
		 * this calculation is either completely meaningless or wrong.
		 * Each command must validate the value for itself.
		 */
		if (FUNC3(vp, VC_C1SET) && FUNC3(vp, VM_LMODE))
			vp->m_stop.lno += vp->count - 1;

		/* Increment the command count. */
		++sp->ccnt;

#if defined(DEBUG) && defined(COMLOG)
		v_comlog(sp, vp);
#endif
		/* Call the function. */
ex_continue:	if (vp->kp->func(sp, vp))
			goto err;
gc_event:
#ifdef DEBUG
		/* Make sure no function left the temporary space locked. */
		if (F_ISSET(gp, G_TMP_INUSE)) {
			F_CLR(gp, G_TMP_INUSE);
			msgq(sp, M_ERR,
			    "232|vi: temporary buffer not released");
		}
#endif
		/*
		 * If we're exiting this screen, move to the next one, or, if
		 * there aren't any more, return to the main editor loop.  The
		 * ordering is careful, don't discard the contents of sp until
		 * the end.
		 */
		if (FUNC3(sp, SC_EXIT | SC_EXIT_FORCE)) {
			if (FUNC12(sp, NULL, FUNC3(sp, SC_EXIT_FORCE)))
				goto ret;
			if (FUNC32(sp, &next))
				goto ret;
			if (next == NULL && FUNC36(sp, &next, NULL))
				goto ret;
			*spp = next;
			if (FUNC18(sp))
				goto ret;
			if (next == NULL)
				break;

			/* Switch screens, change focus. */
			sp = next;
			vip = FUNC9(sp);
			(void)sp->gp->scr_rename(sp, sp->frp->name, 1);

			/* Don't trust the cursor. */
			FUNC4(vip, VIP_CUR_INVALID);

			continue;
		}

		/*
		 * Set the dot command structure.
		 *
		 * !!!
		 * Historically, commands which used mapped keys did not
		 * set the dot command, with the exception of the text
		 * input commands.
		 */
		if (FUNC3(vp, V_DOT) && !mapped) {
			*DOT = cmd;
			FUNC4(DOT, VC_ISDOT);

			/*
			 * If a count was supplied for both the command and
			 * its motion, the count was used only for the motion.
			 * Turn the count back on for the dot structure.
			 */
			if (FUNC3(vp, VC_C1RESET))
				FUNC4(DOT, VC_C1SET);

			/* VM flags aren't retained. */
			FUNC2(DOT, VM_COMMASK | VM_RCM_MASK);
		}

		/*
		 * Some vi row movements are "attracted" to the last position
		 * set, i.e. the VM_RCM commands are moths to the VM_RCM_SET
		 * commands' candle.  If the movement is to the EOL the vi
		 * command handles it.  If it's to the beginning, we handle it
		 * here.
		 *
		 * Note, some commands (e.g. _, ^) don't set the VM_RCM_SETFNB
		 * flag, but do the work themselves.  The reason is that they
		 * have to modify the column in case they're being used as a
		 * motion component.  Other similar commands (e.g. +, -) don't
		 * have to modify the column because they are always line mode
		 * operations when used as motions, so the column number isn't
		 * of any interest.
		 *
		 * Does this totally violate the screen and editor layering?
		 * You betcha.  As they say, if you think you understand it,
		 * you don't.
		 */
		switch (FUNC3(vp, VM_RCM_MASK)) {
		case 0:
		case VM_RCM_SET:
			break;
		case VM_RCM:
			vp->m_final.cno = FUNC33(sp,
			    vp->m_final.lno, FUNC3(vip, VIP_RCM_LAST));
			break;
		case VM_RCM_SETLAST:
			FUNC4(vip, VIP_RCM_LAST);
			break;
		case VM_RCM_SETFNB:
			vp->m_final.cno = 0;
			/* FALLTHROUGH */
		case VM_RCM_SETNNB:
			if (FUNC17(sp, vp->m_final.lno, &vp->m_final.cno))
				goto err;
			break;
		default:
			FUNC10();
		}

		/* Update the cursor. */
		sp->lno = vp->m_final.lno;
		sp->cno = vp->m_final.cno;

		/*
		 * Set the absolute mark -- set even if a tags or similar
		 * command, since the tag may be moving to the same file.
		 */
		if ((FUNC3(vp, V_ABS) ||
		    (FUNC3(vp, V_ABS_L) && sp->lno != abs.lno) ||
		    (FUNC3(vp, V_ABS_C) &&
		    (sp->lno != abs.lno || sp->cno != abs.cno))) &&
		    FUNC14(sp, ABSMARK1, &abs, 1))
			goto err;

		if (0) {
err:			if (FUNC28(sp, CH_MAPPED))
				FUNC16(sp, M_BERR,
			    "110|Vi command failed: mapped keys discarded");
		}

		/*
		 * Check and clear interrupts.  There's an obvious race, but
		 * it's not worth fixing.
		 */
gc_err_noflush:	if (FUNC5(sp)) {
intr:			FUNC0(sp);
			if (FUNC28(sp, CH_MAPPED))
				FUNC16(sp, M_ERR,
				    "231|Interrupted: mapped keys discarded");
			else
				FUNC16(sp, M_ERR, "236|Interrupted");
		}

		/* If the last command switched screens, update. */
		if (FUNC3(sp, SC_SSWITCH)) {
			FUNC2(sp, SC_SSWITCH);

			/*
			 * If the current screen is still displayed, it will
			 * need a new status line.
			 */
			FUNC4(sp, SC_STATUS);

			/* Switch screens, change focus. */
			sp = sp->nextdisp;
			vip = FUNC9(sp);
			(void)sp->gp->scr_rename(sp, sp->frp->name, 1);

			/* Don't trust the cursor. */
			FUNC4(vip, VIP_CUR_INVALID);

			/* Refresh so we can display messages. */
			if (FUNC34(sp, 1))
				return (1);
		}

		/* If the last command switched files, change focus. */
		if (FUNC3(sp, SC_FSWITCH)) {
			FUNC2(sp, SC_FSWITCH);
			(void)sp->gp->scr_rename(sp, sp->frp->name, 1);
		}

		/* If leaving vi, return to the main editor loop. */
		if (FUNC3(gp, G_SRESTART) || FUNC3(sp, SC_EX)) {
			*spp = sp;
			FUNC27(sp);
			gp->scr_discard(sp, NULL);
			break;
		}
	}
	if (0)
ret:		rval = 1;
	return (rval);
}