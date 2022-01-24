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
typedef  int int16_t ;

/* Variables and functions */
 int BIAS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int EXP_LARGE ; 
 int /*<<< orphan*/  FUNC1 (int,long double) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 double ln2 ; 
 double FUNC3 (long double) ; 
 double FUNC4 (double) ; 
 long double one ; 
 long double FUNC5 (double) ; 

long double
FUNC6(long double x)
{
	long double t;
	int16_t hx;

	FUNC0();
	FUNC1(hx, x);
	if (hx < 0x3fff) {		/* x < 1, or misnormal */
	    FUNC2((x-x)/(x-x));
	} else if (hx >= BIAS + EXP_LARGE) { /* x >= LARGE */
	    if (hx >= 0x7fff) {		/* x is inf, NaN or misnormal */
	        FUNC2(x+x);
	    } else 
		FUNC2(FUNC4(x)+ln2);	/* acosh(huge)=log(2x), or misnormal */
	} else if (hx == 0x3fff && x == 1) {
	    FUNC2(0.0);		/* acosh(1) = 0 */
	} else if (hx >= 0x4000) {	/* LARGE > x >= 2, or misnormal */
	    t=x*x;
	    FUNC2(FUNC4(2.0*x-one/(x+FUNC5(t-one))));
	} else {			/* 1<x<2 */
	    t = x-one;
	    FUNC2(FUNC3(t+FUNC5(2.0*t+t*t)));
	}
}