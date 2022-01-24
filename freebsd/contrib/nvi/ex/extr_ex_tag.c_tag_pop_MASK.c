#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_1__* current; } ;
struct TYPE_15__ {int /*<<< orphan*/  tq; } ;
struct TYPE_14__ {struct TYPE_14__* frp; int /*<<< orphan*/  cno; int /*<<< orphan*/  lno; } ;
struct TYPE_13__ {TYPE_2__* frp; int /*<<< orphan*/  cno; int /*<<< orphan*/  lno; } ;
typedef  int /*<<< orphan*/  TAGQ ;
typedef  TYPE_1__ TAG ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ EX_PRIVATE ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FR_CURSORSET ; 
 int FS_ALL ; 
 int FS_POSSIBLE ; 
 int /*<<< orphan*/  FS_SETALT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_FSWITCH ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  q ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(SCR *sp, TAGQ *dtqp, int force)
{
	EX_PRIVATE *exp;
	TAG *tp;
	TAGQ *tqp;

	exp = FUNC0(sp);

	/*
	 * Update the cursor from the saved TAG information of the TAG
	 * structure we're moving to.
	 */
	tp = FUNC3(dtqp, q)->current;
	if (tp->frp == sp->frp) {
		sp->lno = tp->lno;
		sp->cno = tp->cno;
	} else {
		if (FUNC5(sp, force, FS_ALL | FS_POSSIBLE))
			return (1);

		tp->frp->lno = tp->lno;
		tp->frp->cno = tp->cno;
		FUNC1(sp->frp, FR_CURSORSET);
		if (FUNC4(sp, tp->frp, NULL, FS_SETALT))
			return (1);

		FUNC1(sp, SC_FSWITCH);
	}

	/* Pop entries off the queue up to and including dtqp. */
	do {
		tqp = FUNC2(exp->tq);
		if (FUNC6(sp, tqp))
			return (0);
	} while (tqp != dtqp);

	/*
	 * If only a single tag left, we've returned to the first tag point,
	 * and the stack is now empty.
	 */
	if (FUNC3(FUNC2(exp->tq), q) == NULL)
		FUNC6(sp, FUNC2(exp->tq));

	return (0);
}