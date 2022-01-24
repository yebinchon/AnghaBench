#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int tval; int /*<<< orphan*/  fval; int /*<<< orphan*/  sval; int /*<<< orphan*/  nval; int /*<<< orphan*/  csub; } ;
typedef  TYPE_1__ Cell ;

/* Variables and functions */
 int /*<<< orphan*/  CCOPY ; 
 int CON ; 
 int DONTFREE ; 
 int FLD ; 
 int REC ; 
 TYPE_1__* FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

Cell *FUNC3(Cell *x)	/* make a copy of a cell in a temp */
{
	Cell *y;

	/* copy is not constant or field */

	y = FUNC0();
	y->tval = x->tval & ~(CON|FLD|REC);
	y->csub = CCOPY;	/* prevents freeing until call is over */
	y->nval = x->nval;	/* BUG? */
	if (FUNC1(x) /* || x->ctype == OCELL */) {
		y->sval = FUNC2(x->sval);
		y->tval &= ~DONTFREE;
	} else
		y->tval |= DONTFREE;
	y->fval = x->fval;
	return y;
}