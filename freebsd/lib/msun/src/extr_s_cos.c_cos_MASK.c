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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,double) ; 
 int FUNC1 (double,double*) ; 
 double FUNC2 (double,double) ; 
 double FUNC3 (double,double,int) ; 

double
FUNC4(double x)
{
	double y[2],z=0.0;
	int32_t n, ix;

    /* High word of x. */
	FUNC0(ix,x);

    /* |x| ~< pi/4 */
	ix &= 0x7fffffff;
	if(ix <= 0x3fe921fb) {
	    if(ix<0x3e46a09e)			/* if x < 2**-27 * sqrt(2) */
		if(((int)x)==0) return 1.0;	/* generate inexact */
	    return FUNC2(x,z);
	}

    /* cos(Inf or NaN) is NaN */
	else if (ix>=0x7ff00000) return x-x;

    /* argument reduction needed */
	else {
	    n = FUNC1(x,y);
	    switch(n&3) {
		case 0: return  FUNC2(y[0],y[1]);
		case 1: return -FUNC3(y[0],y[1],1);
		case 2: return -FUNC2(y[0],y[1]);
		default:
		        return  FUNC3(y[0],y[1],1);
	    }
	}
}