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
typedef  scalar_t__ Awkfloat ;

/* Variables and functions */
 int POSTINCR ; 
 int PREDECR ; 
 int PREINCR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

Cell *FUNC5(Node **a, int n)		/* a[0]++, etc. */
{
	Cell *x, *z;
	int k;
	Awkfloat xf;

	x = FUNC0(a[0]);
	xf = FUNC1(x);
	k = (n == PREINCR || n == POSTINCR) ? 1 : -1;
	if (n == PREINCR || n == PREDECR) {
		FUNC3(x, xf + k);
		return(x);
	}
	z = FUNC2();
	FUNC3(z, xf);
	FUNC3(x, xf + k);
	FUNC4(x);
	return(z);
}