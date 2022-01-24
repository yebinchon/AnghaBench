#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  tq; } ;
struct TYPE_10__ {int /*<<< orphan*/  tagq; } ;
typedef  TYPE_1__ TAGQ ;
typedef  TYPE_1__ TAG ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_3__ EX_PRIVATE ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  q ; 

int
FUNC5(SCR *sp, TAGQ *tqp)
{
	EX_PRIVATE *exp;
	TAG *tp;

	exp = FUNC0(sp);
	while ((tp = FUNC2(tqp->tagq)) != NULL) {
		FUNC3(tqp->tagq, tp, q);
		FUNC4(tp);
	}
	/*
	 * !!!
	 * If allocated and then the user failed to switch files, the TAGQ
	 * structure was never attached to any list.
	 */
	if (FUNC1(tqp, q))
		FUNC3(exp->tq, tqp, q);
	FUNC4(tqp);
	return (0);
}