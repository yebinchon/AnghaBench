#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int tval; double fval; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ Cell ;
typedef  double Awkfloat ;

/* Variables and functions */
#define  ADDEQ 133 
 int ASSIGN ; 
#define  DIVEQ 132 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FLD ; 
#define  MODEQ 131 
#define  MULTEQ 130 
 int NUM ; 
#define  POWEQ 129 
 int REC ; 
 int STR ; 
#define  SUBEQ 128 
 double FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 double FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 double FUNC6 (double,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 double FUNC9 (double,double*) ; 
 TYPE_1__* nfloc ; 
 int /*<<< orphan*/  FUNC10 (double,double) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,double) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

Cell *FUNC14(Node **a, int n)	/* a[0] = a[1], a[0] += a[1], etc. */
{		/* this is subtle; don't muck with it. */
	Cell *x, *y;
	Awkfloat xf, yf;
	double v;

	y = FUNC2(a[1]);
	x = FUNC2(a[0]);
	if (n == ASSIGN) {	/* ordinary assignment */
		if (x == y && !(x->tval & (FLD|REC)) && x != nfloc)
			;	/* self-assignment: leave alone unless it's a field or NF */
		else if ((y->tval & (STR|NUM)) == (STR|NUM)) {
			FUNC12(x, FUNC5(y));
			x->fval = FUNC4(y);
			x->tval |= NUM;
		}
		else if (FUNC8(y))
			FUNC12(x, FUNC5(y));
		else if (FUNC7(y))
			FUNC11(x, FUNC4(y));
		else
			FUNC3(y, "read value of");
		FUNC13(y);
		return(x);
	}
	xf = FUNC4(x);
	yf = FUNC4(y);
	switch (n) {
	case ADDEQ:
		xf += yf;
		break;
	case SUBEQ:
		xf -= yf;
		break;
	case MULTEQ:
		xf *= yf;
		break;
	case DIVEQ:
		if (yf == 0)
			FUNC0("division by zero in /=");
		xf /= yf;
		break;
	case MODEQ:
		if (yf == 0)
			FUNC0("division by zero in %%=");
		FUNC9(xf/yf, &v);
		xf = xf - yf * v;
		break;
	case POWEQ:
		if (yf >= 0 && FUNC9(yf, &v) == 0.0)	/* pos integer exponent */
			xf = FUNC6(xf, (int) yf);
		else
			xf = FUNC1(FUNC10(xf, yf), "pow");
		break;
	default:
		FUNC0("illegal assignment operator %d", n);
		break;
	}
	FUNC13(y);
	FUNC11(x, xf);
	return(x);
}