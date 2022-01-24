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
 int EXP_LARGE ; 
 int EXP_TINY ; 
 int /*<<< orphan*/  FUNC1 (int,long double) ; 
 int /*<<< orphan*/  FUNC2 (long double) ; 
 long double FUNC3 (long double) ; 
 long double huge ; 
 long double ln2 ; 
 long double FUNC4 (long double) ; 
 long double FUNC5 (double) ; 
 long double one ; 
 long double FUNC6 (long double) ; 

long double
FUNC7(long double x)
{
	long double t, w;
	uint16_t hx, ix;

	FUNC0();
	FUNC1(hx, x);
	ix = hx & 0x7fff;
	if (ix >= 0x7fff) FUNC2(x+x);	/* x is inf, NaN or misnormal */
	if (ix < BIAS + EXP_TINY) {	/* |x| < TINY, or misnormal */
	    if (huge + x > one) FUNC2(x);	/* return x inexact except 0 */
	}
	if (ix >= BIAS + EXP_LARGE) {	/* |x| >= LARGE, or misnormal */
	    w = FUNC5(FUNC3(x))+ln2;
	} else if (ix >= 0x4000) {	/* LARGE > |x| >= 2.0, or misnormal */
	    t = FUNC3(x);
	    w = FUNC5(2.0*t+one/(FUNC6(x*x+one)+t));
	} else {		/* 2.0 > |x| >= TINY, or misnormal */
	    t = x*x;
	    w =FUNC4(FUNC3(x)+t/(one+FUNC6(one+t)));
	}
	FUNC2((hx & 0x8000) == 0 ? w : -w);
}