#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* cnext; int /*<<< orphan*/  sval; int /*<<< orphan*/  tval; int /*<<< orphan*/  nval; } ;
typedef  TYPE_1__ Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_1__* tmps ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(Cell *a)	/* free a tempcell */
{
	if (FUNC3(a)) {
		   FUNC2( ("freeing %s %s %o\n", FUNC1(a->nval), FUNC1(a->sval), a->tval) );
		FUNC4(a->sval);
	}
	if (a == tmps)
		FUNC0("tempcell list is curdled");
	a->cnext = tmps;
	tmps = a;
}