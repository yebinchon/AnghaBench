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
typedef  double Awkfloat ;

/* Variables and functions */
#define  ADD 135 
#define  DIVIDE 134 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  MINUS 133 
#define  MOD 132 
#define  MULT 131 
#define  POWER 130 
#define  UMINUS 129 
#define  UPLUS 128 
 double FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 double FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 double FUNC5 (double,int) ; 
 double FUNC6 (double,double*) ; 
 int /*<<< orphan*/  FUNC7 (double,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

Cell *FUNC10(Node **a, int n)	/* a[0] + a[1], etc.  also -a[0] */
{
	Awkfloat i, j = 0;
	double v;
	Cell *x, *y, *z;

	x = FUNC2(a[0]);
	i = FUNC3(x);
	FUNC9(x);
	if (n != UMINUS && n != UPLUS) {
		y = FUNC2(a[1]);
		j = FUNC3(y);
		FUNC9(y);
	}
	z = FUNC4();
	switch (n) {
	case ADD:
		i += j;
		break;
	case MINUS:
		i -= j;
		break;
	case MULT:
		i *= j;
		break;
	case DIVIDE:
		if (j == 0)
			FUNC0("division by zero");
		i /= j;
		break;
	case MOD:
		if (j == 0)
			FUNC0("division by zero in mod");
		FUNC6(i/j, &v);
		i = i - j * v;
		break;
	case UMINUS:
		i = -i;
		break;
    case UPLUS: /* handled by getfval(), above */
		break;
	case POWER:
		if (j >= 0 && FUNC6(j, &v) == 0.0)	/* pos integer exponent */
			i = FUNC5(i, (int) j);
		else
			i = FUNC1(FUNC7(i, j), "pow");
		break;
	default:	/* can't happen */
		FUNC0("illegal arithmetic operator %d", n);
	}
	FUNC8(z, i);
	return(z);
}