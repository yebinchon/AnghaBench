#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  iflags; int /*<<< orphan*/ * cmd; } ;
struct TYPE_25__ {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;
struct TYPE_24__ {struct TYPE_24__* nextdisp; int /*<<< orphan*/  argv; int /*<<< orphan*/  cargv; int /*<<< orphan*/  cno; int /*<<< orphan*/  lno; TYPE_3__* frp; TYPE_1__* ep; int /*<<< orphan*/  gp; } ;
struct TYPE_23__ {int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ FREF ;
typedef  TYPE_4__ EXCMD ;

/* Variables and functions */
 size_t C_VSPLIT ; 
 int /*<<< orphan*/  E_C_FORCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_FORCE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OS_STRDUP ; 
 int /*<<< orphan*/  O_FILEENCODING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_SSWITCH ; 
 int /*<<< orphan*/ * cmds ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC12(SCR *sp, EXCMD *cmdp, FREF *frp, int attach)
{
	SCR *new;

	/* Get a new screen. */
	if (FUNC8(sp->gp, sp, &new))
		return (1);
	if ((cmdp->cmd == &cmds[C_VSPLIT] && FUNC11(sp, new)) ||
	    (cmdp->cmd != &cmds[C_VSPLIT] && FUNC10(sp, new, 0))) {
		(void)FUNC7(new);
		return (1);
	}

	/* Get a backing file. */
	if (attach) {
		/* Copy file state, keep the screen and cursor the same. */
		new->ep = sp->ep;
		++new->ep->refcnt;

		new->frp = frp;
		new->frp->flags = sp->frp->flags;

		new->lno = sp->lno;
		new->cno = sp->cno;

#if defined(USE_WIDECHAR) && defined(USE_ICONV)
		/* Synchronize the iconv environments. */
		o_set(new, O_FILEENCODING, OS_STRDUP,
		    O_STR(sp, O_FILEENCODING), 0);
		conv_enc(new, O_FILEENCODING, 0);
#endif
	} else if (FUNC5(new, frp, NULL,
	    (FUNC0(cmdp->iflags, E_C_FORCE) ? FS_FORCE : 0))) {
		(void)FUNC9(new, NULL);
		(void)FUNC7(new);
		return (1);
	}

	/* Create the argument list. */
	new->cargv = new->argv = FUNC4(sp, NULL, frp->name);

	/* Set up the switch. */
	sp->nextdisp = new;
	FUNC1(sp, SC_SSWITCH);

	return (0);
}