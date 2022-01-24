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
 int /*<<< orphan*/ * False ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int* pairstack ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

Cell *FUNC4(Node **a, int n)	/* a[0], a[1] { a[2] } */
{
	Cell *x;
	int pair;

	pair = FUNC2(a[3]);
	if (pairstack[pair] == 0) {
		x = FUNC0(a[0]);
		if (FUNC1(x))
			pairstack[pair] = 1;
		FUNC3(x);
	}
	if (pairstack[pair] == 1) {
		x = FUNC0(a[1]);
		if (FUNC1(x))
			pairstack[pair] = 0;
		FUNC3(x);
		x = FUNC0(a[2]);
		return(x);
	}
	return(False);
}