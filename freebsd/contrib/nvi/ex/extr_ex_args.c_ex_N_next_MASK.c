#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  iflags; TYPE_1__** argv; } ;
struct TYPE_19__ {struct TYPE_19__* nextdisp; int /*<<< orphan*/  argv; int /*<<< orphan*/  cargv; int /*<<< orphan*/  gp; } ;
struct TYPE_18__ {scalar_t__ len; int /*<<< orphan*/  bp; } ;
typedef  TYPE_2__ SCR ;
typedef  int /*<<< orphan*/  FREF ;
typedef  TYPE_3__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  E_C_FORCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_FORCE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  SC_SSWITCH ; 
 int /*<<< orphan*/  SC_STATUS_CNT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(SCR *sp, EXCMD *cmdp)
{
	SCR *new;
	FREF *frp;
	char *np;
	size_t nlen;

	/* Get a new screen. */
	if (FUNC7(sp->gp, sp, &new))
		return (1);
	if (FUNC9(sp, new, 0)) {
		(void)FUNC6(new);
		return (1);
	}

	/* Get a backing file. */
	FUNC2(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len + 1, np, nlen);
	if ((frp = FUNC4(new, np)) == NULL ||
	    FUNC5(new, frp, NULL,
	    (FUNC0(cmdp->iflags, E_C_FORCE) ? FS_FORCE : 0))) {
		(void)FUNC8(new, NULL);
		(void)FUNC6(new);
		return (1);
	}

	/* The arguments are a replacement file list. */
	new->cargv = new->argv = FUNC3(sp, cmdp, NULL);

	/* Display a file count with the welcome message. */
	FUNC1(new, SC_STATUS_CNT);

	/* Set up the switch. */
	sp->nextdisp = new;
	FUNC1(sp, SC_SSWITCH);

	return (0);
}