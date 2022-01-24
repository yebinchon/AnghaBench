#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Cell ;

/* Variables and functions */
 int /*<<< orphan*/ * True ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

Cell *FUNC7(Node **a, int n)	/* for (a[0]; a[1]; a[2]) a[3] */
{
	Cell *x;

	x = FUNC0(a[0]);
	FUNC6(x);
	for (;;) {
		if (a[1]!=NULL) {
			x = FUNC0(a[1]);
			if (!FUNC5(x)) return(x);
			else FUNC6(x);
		}
		x = FUNC0(a[3]);
		if (FUNC1(x))		/* turn off break */
			return True;
		if (FUNC3(x) || FUNC2(x) || FUNC4(x))
			return(x);
		FUNC6(x);
		x = FUNC0(a[2]);
		FUNC6(x);
	}
}