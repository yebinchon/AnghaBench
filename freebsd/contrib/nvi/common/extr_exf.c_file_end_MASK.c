#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ (* close ) (TYPE_6__*) ;} ;
struct TYPE_21__ {scalar_t__ refcnt; int rcv_fd; scalar_t__ c_blen; struct TYPE_21__* c_lp; struct TYPE_21__* rcv_mpath; struct TYPE_21__* rcv_path; struct TYPE_21__* name; TYPE_6__* db; struct TYPE_21__* tname; int /*<<< orphan*/  cno; int /*<<< orphan*/  lno; } ;
struct TYPE_20__ {TYPE_3__* frp; TYPE_1__* gp; int /*<<< orphan*/  cno; int /*<<< orphan*/  lno; TYPE_3__* ep; } ;
struct TYPE_19__ {int /*<<< orphan*/  frefq; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ FREF ;
typedef  TYPE_3__ EXF ;

/* Variables and functions */
 int /*<<< orphan*/  FR_CURSORSET ; 
 int /*<<< orphan*/  FR_DONTDELETE ; 
 int /*<<< orphan*/  FR_TMPFILE ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_RCV_NORM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  q ; 
 scalar_t__ FUNC8 (TYPE_6__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 

int
FUNC10(
	SCR *sp,
	EXF *ep,
	int force)
{
	FREF *frp;

	/*
	 * !!!
	 * ep MAY NOT BE THE SAME AS sp->ep, DON'T USE THE LATTER.
	 * (If argument ep is NULL, use sp->ep.)
	 *
	 * If multiply referenced, just decrement the count and return.
	 */
	if (ep == NULL)
		ep = sp->ep;
	if (--ep->refcnt != 0)
		return (0);

	/*
	 *
	 * Clean up the FREF structure.
	 *
	 * Save the cursor location.
	 *
	 * XXX
	 * It would be cleaner to do this somewhere else, but by the time
	 * ex or vi knows that we're changing files it's already happened.
	 */
	frp = sp->frp;
	frp->lno = sp->lno;
	frp->cno = sp->cno;
	FUNC1(frp, FR_CURSORSET);

	/*
	 * We may no longer need the temporary backing file, so clean it
	 * up.  We don't need the FREF structure either, if the file was
	 * never named, so lose it.
	 *
	 * !!!
	 * Re: FR_DONTDELETE, see the comment above in file_init().
	 */
	if (!FUNC0(frp, FR_DONTDELETE) && frp->tname != NULL) {
		if (FUNC9(frp->tname))
			FUNC7(sp, M_SYSERR, frp->tname, "240|%s: remove");
		FUNC4(frp->tname);
		frp->tname = NULL;
		if (FUNC0(frp, FR_TMPFILE)) {
			FUNC2(sp->gp->frefq, frp, q);
			if (frp->name != NULL)
				FUNC4(frp->name);
			FUNC4(frp);
		}
		sp->frp = NULL;
	}

	/*
	 * Clean up the EXF structure.
	 *
	 * Close the db structure.
	 */
	if (ep->db->close != NULL && ep->db->close(ep->db) && !force) {
		FUNC7(sp, M_SYSERR, frp->name, "241|%s: close");
		++ep->refcnt;
		return (1);
	}

	/* COMMITTED TO THE CLOSE.  THERE'S NO GOING BACK... */

	/* Stop logging. */
	(void)FUNC5(sp, ep);

	/* Free up any marks. */
	(void)FUNC6(sp, ep);

	/*
	 * Delete recovery files, close the open descriptor, free recovery
	 * memory.  See recover.c for a description of the protocol.
	 *
	 * XXX
	 * Unlink backup file first, we can detect that the recovery file
	 * doesn't reference anything when the user tries to recover it.
	 * There's a race, here, obviously, but it's fairly small.
	 */
	if (!FUNC0(ep, F_RCV_NORM)) {
		if (ep->rcv_path != NULL && FUNC9(ep->rcv_path))
			FUNC7(sp, M_SYSERR, ep->rcv_path, "242|%s: remove");
		if (ep->rcv_mpath != NULL && FUNC9(ep->rcv_mpath))
			FUNC7(sp, M_SYSERR, ep->rcv_mpath, "243|%s: remove");
	}
	if (ep->rcv_fd != -1)
		(void)FUNC3(ep->rcv_fd);
	if (ep->rcv_path != NULL)
		FUNC4(ep->rcv_path);
	if (ep->rcv_mpath != NULL)
		FUNC4(ep->rcv_mpath);
	if (ep->c_blen > 0)
		FUNC4(ep->c_lp);

	FUNC4(ep);
	return (0);
}