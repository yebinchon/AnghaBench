#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int lundo; } ;
struct TYPE_14__ {int /*<<< orphan*/  cno; int /*<<< orphan*/  lno; } ;
struct TYPE_13__ {int /*<<< orphan*/  cno; int /*<<< orphan*/  lno; TYPE_3__* ep; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ MARK ;
typedef  TYPE_3__ EXF ;
typedef  int /*<<< orphan*/  EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  ABSMARK1 ; 
#define  BACKWARD 130 
#define  FORWARD 129 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_UNDO ; 
#define  NOTSET 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int) ; 

int
FUNC6(SCR *sp, EXCMD *cmdp)
{
	EXF *ep;
	MARK m;

	/*
	 * !!!
	 * Historic undo always set the previous context mark.
	 */
	m.lno = sp->lno;
	m.cno = sp->cno;
	if (FUNC5(sp, ABSMARK1, &m, 1))
		return (1);

	/*
	 * !!!
	 * Multiple undo isn't available in ex, as there's no '.' command.
	 * Whether 'u' is undo or redo is toggled each time, unless there
	 * was a change since the last undo, in which case it's an undo.
	 */
	ep = sp->ep;
	if (!FUNC0(ep, F_UNDO)) {
		FUNC1(ep, F_UNDO);
		ep->lundo = FORWARD;
	}
	switch (ep->lundo) {
	case BACKWARD:
		if (FUNC4(sp, &m))
			return (1);
		ep->lundo = FORWARD;
		break;
	case FORWARD:
		if (FUNC3(sp, &m))
			return (1);
		ep->lundo = BACKWARD;
		break;
	case NOTSET:
		FUNC2();
	}
	sp->lno = m.lno;
	sp->cno = m.cno;
	return (0);
}