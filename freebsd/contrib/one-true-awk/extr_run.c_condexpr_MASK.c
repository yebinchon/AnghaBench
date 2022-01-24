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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

Cell *FUNC3(Node **a, int n)	/* a[0] ? a[1] : a[2] */
{
	Cell *x;

	x = FUNC0(a[0]);
	if (FUNC1(x)) {
		FUNC2(x);
		x = FUNC0(a[1]);
	} else {
		FUNC2(x);
		x = FUNC0(a[2]);
	}
	return(x);
}