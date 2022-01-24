#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  csub; int /*<<< orphan*/  ctype; int /*<<< orphan*/  nval; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ Cell ;
typedef  scalar_t__ Awkfloat ;

/* Variables and functions */
 int /*<<< orphan*/  CFLD ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  OCELL ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

Cell *FUNC7(Node **a, int n)	/* $( a[0] ) */
{
	Awkfloat val;
	Cell *x;
	int m;
	char *s;

	x = FUNC1(a[0]);
	val = FUNC3(x);	/* freebsd: defend against super large field numbers */
	if ((Awkfloat)INT_MAX < val)
		FUNC0("trying to access out of range field %s", x->nval);
	m = (int) val;
	if (m == 0 && !FUNC5(s = FUNC4(x)))	/* suspicion! */
		FUNC0("illegal field $(%s), name \"%s\"", s, x->nval);
		/* BUG: can x->nval ever be null??? */
	FUNC6(x);
	x = FUNC2(m);
	x->ctype = OCELL;	/* BUG?  why are these needed? */
	x->csub = CFLD;
	return(x);
}