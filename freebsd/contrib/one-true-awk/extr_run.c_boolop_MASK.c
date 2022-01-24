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
#define  AND 130 
#define  BOR 129 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/ * False ; 
#define  NOT 128 
 int /*<<< orphan*/ * True ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

Cell *FUNC4(Node **a, int n)	/* a[0] || a[1], a[0] && a[1], !a[0] */
{
	Cell *x, *y;
	int i;

	x = FUNC1(a[0]);
	i = FUNC2(x);
	FUNC3(x);
	switch (n) {
	case BOR:
		if (i) return(True);
		y = FUNC1(a[1]);
		i = FUNC2(y);
		FUNC3(y);
		if (i) return(True);
		else return(False);
	case AND:
		if ( !i ) return(False);
		y = FUNC1(a[1]);
		i = FUNC2(y);
		FUNC3(y);
		if (i) return(True);
		else return(False);
	case NOT:
		if (i) return(False);
		else return(True);
	default:	/* can't happen */
		FUNC0("unknown boolean operator %d", n);
	}
	return 0;	/*NOTREACHED*/
}