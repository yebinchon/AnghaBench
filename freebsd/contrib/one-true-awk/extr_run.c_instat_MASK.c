#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int size; TYPE_1__** tab; } ;
struct TYPE_13__ {struct TYPE_13__* cnext; int /*<<< orphan*/  nval; scalar_t__ sval; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ Cell ;
typedef  TYPE_2__ Array ;

/* Variables and functions */
 TYPE_1__* True ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

Cell *FUNC8(Node **a, int n)	/* for (a[0] in a[1]) a[2] */
{
	Cell *x, *vp, *arrayp, *cp, *ncp;
	Array *tp;
	int i;

	vp = FUNC0(a[0]);
	arrayp = FUNC0(a[1]);
	if (!FUNC1(arrayp)) {
		return True;
	}
	tp = (Array *) arrayp->sval;
	FUNC7(arrayp);
	for (i = 0; i < tp->size; i++) {	/* this routine knows too much */
		for (cp = tp->tab[i]; cp != NULL; cp = ncp) {
			FUNC6(vp, cp->nval);
			ncp = cp->cnext;
			x = FUNC0(a[2]);
			if (FUNC2(x)) {
				FUNC7(vp);
				return True;
			}
			if (FUNC4(x) || FUNC3(x) || FUNC5(x)) {
				FUNC7(vp);
				return(x);
			}
			FUNC7(x);
		}
	}
	return True;
}