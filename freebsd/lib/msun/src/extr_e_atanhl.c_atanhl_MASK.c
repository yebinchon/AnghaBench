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
typedef  int uint16_t ;

/* Variables and functions */
 int BIAS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int EXP_TINY ; 
 int /*<<< orphan*/  FUNC1 (int,long double) ; 
 int /*<<< orphan*/  FUNC2 (long double) ; 
 int /*<<< orphan*/  FUNC3 (long double,int) ; 
 int FUNC4 (long double) ; 
 long double huge ; 
 double FUNC5 (long double) ; 
 long double one ; 
 long double zero ; 

long double
FUNC6(long double x)
{
	long double t;
	uint16_t hx, ix;

	FUNC0();
	FUNC1(hx, x);
	ix = hx & 0x7fff;
	if (ix >= 0x3fff)		/* |x| >= 1, or NaN or misnormal */
	    FUNC2(FUNC4(x) == 1 ? x / zero : (x - x) / (x - x));
	if (ix < BIAS + EXP_TINY && (huge + x) > zero)
	    FUNC2(x);			/* x is tiny */
	FUNC3(x, ix);
	if (ix < 0x3ffe) {		/* |x| < 0.5, or misnormal */
	    t = x+x;
	    t = 0.5*FUNC5(t+t*x/(one-x));
	} else 
	    t = 0.5*FUNC5((x+x)/(one-x));
	FUNC2((hx & 0x8000) == 0 ? t : -t);
}