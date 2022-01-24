#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_4__* c; } ;
struct TYPE_15__ {TYPE_1__ bp1; } ;
struct TYPE_17__ {TYPE_2__ ibcw; struct TYPE_17__* lastbcomm; struct TYPE_17__* ibp; } ;
struct TYPE_16__ {int /*<<< orphan*/ * ex_private; } ;
typedef  TYPE_3__ SCR ;
typedef  TYPE_4__ EX_PRIVATE ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_SCRIPT ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 

int
FUNC7(SCR *sp)
{
	EX_PRIVATE *exp;
	int rval;

	if ((exp = FUNC0(sp)) == NULL)
		return (0);

	rval = 0;

	/* Close down script connections. */
	if (FUNC1(sp, SC_SCRIPT) && FUNC6(sp))
		rval = 1;

	if (FUNC2(sp))
		rval = 1;

	if (exp->ibp != NULL)
		FUNC5(exp->ibp);

	if (exp->lastbcomm != NULL)
		FUNC5(exp->lastbcomm);

	if (exp->ibcw.bp1.c != NULL)
		FUNC5(exp->ibcw.bp1.c);

	if (FUNC4(sp))
		rval = 1;

	if (FUNC3(sp))
		rval = 1;

	/* Free private memory. */
	FUNC5(exp);
	sp->ex_private = NULL;

	return (rval);
}