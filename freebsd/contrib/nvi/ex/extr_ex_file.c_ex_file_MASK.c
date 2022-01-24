#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int argc; TYPE_1__** argv; } ;
struct TYPE_21__ {char* name; } ;
struct TYPE_20__ {int /*<<< orphan*/  lno; TYPE_4__* frp; TYPE_2__* gp; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* scr_rename ) (TYPE_3__*,char*,int) ;} ;
struct TYPE_18__ {int /*<<< orphan*/  len; int /*<<< orphan*/  bp; } ;
typedef  TYPE_3__ SCR ;
typedef  TYPE_4__ FREF ;
typedef  TYPE_5__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  FR_NAMECHANGE ; 
 int FR_TMPEXIT ; 
 int FR_TMPFILE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  MSTAT_SHOWLAST ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,int) ; 
 char* FUNC10 (TYPE_3__*,char*,size_t) ; 

int
FUNC11(SCR *sp, EXCMD *cmdp)
{
	char *p;
	FREF *frp;
	char *np;
	size_t nlen;

	FUNC4(sp, cmdp);

	switch (cmdp->argc) {
	case 0:
		break;
	case 1:
		frp = sp->frp;

		/* Make sure can allocate enough space. */
		FUNC3(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len + 1, 
			    np, nlen);
		if ((p = FUNC10(sp, np, nlen - 1)) == NULL)
			return (1);

		/* If already have a file name, it becomes the alternate. */
		if (!FUNC1(frp, FR_TMPFILE))
			FUNC8(sp, frp->name);

		/* Free the previous name. */
		FUNC6(frp->name);
		frp->name = p;

		/*
		 * The file has a real name, it's no longer a temporary,
		 * clear the temporary file flags.
		 */
		FUNC0(frp, FR_TMPEXIT | FR_TMPFILE);

		/* Have to force a write if the file exists, next time. */
		FUNC2(frp, FR_NAMECHANGE);

		/* Notify the screen. */
		(void)sp->gp->scr_rename(sp, sp->frp->name, 1);
		break;
	default:
		FUNC5();
	}
	FUNC7(sp, sp->lno, MSTAT_SHOWLAST);
	return (0);
}