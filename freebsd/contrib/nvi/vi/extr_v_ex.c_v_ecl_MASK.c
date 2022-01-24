#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_2__* ccl_sp; } ;
struct TYPE_20__ {int lno; struct TYPE_20__* nextdisp; struct TYPE_20__* ccl_parent; TYPE_3__* frp; TYPE_1__* ep; TYPE_5__* gp; } ;
struct TYPE_19__ {int /*<<< orphan*/  flags; } ;
struct TYPE_18__ {TYPE_3__* frp; TYPE_1__* ep; } ;
struct TYPE_17__ {int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_4__ SCR ;
typedef  TYPE_5__ GS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OS_STRDUP ; 
 int /*<<< orphan*/  O_FILEENCODING ; 
 int /*<<< orphan*/  SC_COMEDIT ; 
 int /*<<< orphan*/  SC_SSWITCH ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_5__*,TYPE_4__*,TYPE_4__**) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,TYPE_4__*,int) ; 

__attribute__((used)) static int
FUNC8(SCR *sp)
{
	GS *gp;
	SCR *new;

	/* Initialize the screen, if necessary. */
	gp = sp->gp;
	if (gp->ccl_sp == NULL && FUNC6(sp))
		return (1);

	/* Get a new screen. */
	if (FUNC5(gp, sp, &new))
		return (1);
	if (FUNC7(sp, new, 1)) {
		(void)FUNC4(new);
		return (1);
	}

	/* Attach to the screen. */
	new->ep = gp->ccl_sp->ep;
	++new->ep->refcnt;

	new->frp = gp->ccl_sp->frp;
	new->frp->flags = sp->frp->flags;

	/* Move the cursor to the end. */
	(void)FUNC2(new, &new->lno);
	if (new->lno == 0)
		new->lno = 1;

	/* Remember the originating window. */
	sp->ccl_parent = sp;

	/* It's a special window. */
	FUNC0(new, SC_COMEDIT);

#if defined(USE_WIDECHAR) && defined(USE_ICONV)
	/* Bypass iconv on writing to DB. */
	o_set(new, O_FILEENCODING, OS_STRDUP, codeset(), 0);
#endif

	/* Set up the switch. */
	sp->nextdisp = new;
	FUNC0(sp, SC_SSWITCH);
	return (0);
}