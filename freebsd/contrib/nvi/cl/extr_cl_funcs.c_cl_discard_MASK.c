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
struct TYPE_6__ {int /*<<< orphan*/  coff; int /*<<< orphan*/  roff; int /*<<< orphan*/  cols; int /*<<< orphan*/  rows; int /*<<< orphan*/ * cl_private; } ;
typedef  TYPE_1__ SCR ;
typedef  int /*<<< orphan*/  CL_PRIVATE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  CL_LAYOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(SCR *discardp, SCR **acquirep)
{
	CL_PRIVATE *clp;
	SCR*	tsp;

	if (discardp) {
	    clp = FUNC0(discardp);
	    FUNC2(clp, CL_LAYOUT);

	    if (FUNC1(discardp)) {
		    FUNC3(FUNC1(discardp));
		    discardp->cl_private = NULL;
	    }
	}

	/* no screens got a piece; we're done */
	if (!acquirep) 
		return 0;

	for (; (tsp = *acquirep) != NULL; ++acquirep) {
		clp = FUNC0(tsp);
		FUNC2(clp, CL_LAYOUT);

		if (FUNC1(tsp))
			FUNC3(FUNC1(tsp));
		tsp->cl_private = FUNC4(stdscr, tsp->rows, tsp->cols,
					   tsp->roff, tsp->coff);
	}

	/* discardp is going away, acquirep is taking up its space. */
	return (0);
}