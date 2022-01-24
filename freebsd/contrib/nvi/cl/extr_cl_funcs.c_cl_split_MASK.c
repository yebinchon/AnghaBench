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
struct TYPE_6__ {int /*<<< orphan*/  coff; int /*<<< orphan*/  roff; int /*<<< orphan*/  cols; int /*<<< orphan*/  rows; void* cl_private; } ;
typedef  TYPE_1__ SCR ;
typedef  int /*<<< orphan*/  CL_PRIVATE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  CL_LAYOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  stdscr ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(SCR *origp, SCR *newp)
{
	CL_PRIVATE *clp;

	clp = FUNC0(origp);
	FUNC2(clp, CL_LAYOUT);

	if (FUNC1(origp))
		FUNC3(FUNC1(origp));

	origp->cl_private = FUNC4(stdscr, origp->rows, origp->cols,
				     origp->roff, origp->coff);
	newp->cl_private = FUNC4(stdscr, newp->rows, newp->cols,
				     newp->roff, newp->coff);

	/* origp is the original screen, giving up space to newp. */
	return (0);
}