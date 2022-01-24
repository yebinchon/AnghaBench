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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * True ; 
 int /*<<< orphan*/  env ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  record ; 
 int /*<<< orphan*/  recsize ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

Cell *FUNC10(Node **a, int n)	/* execute an awk program */
{				/* a[0] = BEGIN, a[1] = body, a[2] = END */
	Cell *x;

	if (FUNC8(env) != 0)
		goto ex;
	if (a[0]) {		/* BEGIN */
		x = FUNC1(a[0]);
		if (FUNC5(x))
			return(True);
		if (FUNC6(x))
			FUNC0("illegal break, continue, next or nextfile from BEGIN");
		FUNC9(x);
	}
	if (a[1] || a[2])
		while (FUNC2(&record, &recsize, 1) > 0) {
			x = FUNC1(a[1]);
			if (FUNC5(x))
				break;
			FUNC9(x);
		}
  ex:
	if (FUNC8(env) != 0)	/* handles exit within END */
		goto ex1;
	if (a[2]) {		/* END */
		x = FUNC1(a[2]);
		if (FUNC3(x) || FUNC7(x) || FUNC4(x))
			FUNC0("illegal break, continue, next or nextfile from END");
		FUNC9(x);
	}
  ex1:
	return(True);
}