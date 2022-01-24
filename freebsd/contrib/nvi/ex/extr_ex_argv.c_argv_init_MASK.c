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
struct TYPE_6__ {scalar_t__ argc; int /*<<< orphan*/  argv; } ;
struct TYPE_5__ {scalar_t__ argsoff; int /*<<< orphan*/  args; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ EX_PRIVATE ;
typedef  TYPE_2__ EXCMD ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

int
FUNC2(SCR *sp, EXCMD *excp)
{
	EX_PRIVATE *exp;

	exp = FUNC0(sp);
	exp->argsoff = 0;
	FUNC1(sp, 1);

	excp->argv = exp->args;
	excp->argc = exp->argsoff;
	return (0);
}