#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/ * c_option; } ;
struct TYPE_17__ {int lno; size_t cno; } ;
struct TYPE_16__ {int lno; size_t cno; size_t rcm; struct TYPE_16__* frp; TYPE_3__* gp; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ MARK ;
typedef  TYPE_3__ GS ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  ABSMARK1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FR_CURSORSET ; 
 int /*<<< orphan*/  FR_NEWFILE ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_COMMENT ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_EX ; 
 int /*<<< orphan*/  SC_SCR_CENTER ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ *,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,size_t*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(SCR *sp)
{
	GS *gp;
	MARK m;
	size_t len;
	int nb;
	CHAR_T *wp;
	size_t wlen;

	/* Set some basic defaults. */
	sp->lno = 1;
	sp->cno = 0;

	/*
	 * Historically, initial commands (the -c option) weren't executed
	 * until a file was loaded, e.g. "vi +10 nofile", followed by an
	 * :edit or :tag command, would execute the +10 on the file loaded
	 * by the subsequent command, (assuming that it existed).  This
	 * applied as well to files loaded using the tag commands, and we
	 * follow that historic practice.  Also, all initial commands were
	 * ex commands and were always executed on the last line of the file.
	 *
	 * Otherwise, if no initial command for this file:
	 *    If in ex mode, move to the last line, first nonblank character.
	 *    If the file has previously been edited, move to the last known
	 *	  position, and check it for validity.
	 *    Otherwise, move to the first line, first nonblank.
	 *
	 * This gets called by the file init code, because we may be in a
	 * file of ex commands and we want to execute them from the right
	 * location in the file.
	 */
	nb = 0;
	gp = sp->gp;
	if (gp->c_option != NULL && !FUNC1(sp->frp, FR_NEWFILE)) {
		if (FUNC5(sp, &sp->lno))
			return;
		if (sp->lno == 0) {
			sp->lno = 1;
			sp->cno = 0;
		}
		FUNC0(sp, gp->c_option, FUNC10(gp->c_option) + 1,
			 wp, wlen);
		if (FUNC6(sp, "-c option", wp, wlen - 1, 1, 1))
			return;
		gp->c_option = NULL;
	} else if (FUNC1(sp, SC_EX)) {
		if (FUNC5(sp, &sp->lno))
			return;
		if (sp->lno == 0) {
			sp->lno = 1;
			sp->cno = 0;
			return;
		}
		nb = 1;
	} else {
		if (FUNC1(sp->frp, FR_CURSORSET)) {
			sp->lno = sp->frp->lno;
			sp->cno = sp->frp->cno;

			/* If returning to a file in vi, center the line. */
			 FUNC2(sp, SC_SCR_CENTER);
		} else {
			if (FUNC3(sp, O_COMMENT))
				FUNC7(sp);
			else
				sp->lno = 1;
			nb = 1;
		}
		if (FUNC4(sp, sp->lno, 0, NULL, &len)) {
			sp->lno = 1;
			sp->cno = 0;
			return;
		}
		if (!nb && sp->cno > len)
			nb = 1;
	}
	if (nb) {
		sp->cno = 0;
		(void)FUNC9(sp, sp->lno, &sp->cno);
	}

	/*
	 * !!!
	 * The initial column is also the most attractive column.
	 */
	sp->rcm = sp->cno;

	/*
	 * !!!
	 * Historically, vi initialized the absolute mark, but ex did not.
	 * Which meant, that if the first command in ex mode was "visual",
	 * or if an ex command was executed first (e.g. vi +10 file) vi was
	 * entered without the mark being initialized.  For consistency, if
	 * the file isn't empty, we initialize it for everyone, believing
	 * that it can't hurt, and is generally useful.  Not initializing it
	 * if the file is empty is historic practice, although it has always
	 * been possible to set (and use) marks in empty vi files.
	 */
	m.lno = sp->lno;
	m.cno = sp->cno;
	(void)FUNC8(sp, ABSMARK1, &m, 0);
}