#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* sval; int fval; int /*<<< orphan*/  nval; int /*<<< orphan*/  tval; } ;
struct TYPE_7__ {struct TYPE_7__* nnext; } ;
typedef  TYPE_1__ Node ;
typedef  TYPE_2__ Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FCN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

void FUNC4(Cell *v, Node *vl, Node *st)	/* turn on FCN bit in definition, */
{					/*   body of function, arglist */
	Node *p;
	int n;

	if (FUNC3(v)) {
		FUNC0( "`%s' is an array name and a function name", v->nval );
		return;
	}
	if (FUNC2(v->nval) != -1) {
		FUNC0( "`%s' is both function name and argument name", v->nval );
		return;
	}

	v->tval = FCN;
	v->sval = (char *) st;
	n = 0;	/* count arguments */
	for (p = vl; p; p = p->nnext)
		n++;
	v->fval = n;
	FUNC1( ("defining func %s (%d args)\n", v->nval, n) );
}