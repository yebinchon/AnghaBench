#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  iflags; } ;
struct TYPE_5__ {int /*<<< orphan*/  tq; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ EX_PRIVATE ;
typedef  TYPE_2__ EXCMD ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_C_FORCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_EMPTY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _tqh ; 
 int /*<<< orphan*/  q ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(SCR *sp, EXCMD *cmdp)
{
	EX_PRIVATE *exp;

	exp = FUNC0(sp);

	/* Check for an empty stack. */
	if (FUNC2(exp->tq)) {
		FUNC5(sp, TAG_EMPTY, NULL);
		return (1);
	}

	/* Return to the oldest information. */
	return (FUNC6(sp, FUNC4(FUNC3(exp->tq, _tqh), _tqh, q),
	    FUNC1(cmdp->iflags, E_C_FORCE)));
}