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
 int /*<<< orphan*/  FUNC0 (int,float) ; 
 int FUNC1 (float,double*) ; 
 float FUNC2 (double,int) ; 
 float t1pio2 ; 
 float t2pio2 ; 
 float t3pio2 ; 
 float t4pio2 ; 

float
FUNC3(float x)
{
	double y;
	int32_t n, hx, ix;

	FUNC0(hx,x);
	ix = hx & 0x7fffffff;

	if(ix <= 0x3f490fda) {		/* |x| ~<= pi/4 */
	    if(ix<0x39800000)		/* |x| < 2**-12 */
		if(((int)x)==0) return x;	/* x with inexact if x != 0 */
	    return FUNC2(x,1);
	}
	if(ix<=0x407b53d1) {		/* |x| ~<= 5*pi/4 */
	    if(ix<=0x4016cbe3)		/* |x| ~<= 3pi/4 */
		return FUNC2(x + (hx>0 ? -t1pio2 : t1pio2), -1);
	    else
		return FUNC2(x + (hx>0 ? -t2pio2 : t2pio2), 1);
	}
	if(ix<=0x40e231d5) {		/* |x| ~<= 9*pi/4 */
	    if(ix<=0x40afeddf)		/* |x| ~<= 7*pi/4 */
		return FUNC2(x + (hx>0 ? -t3pio2 : t3pio2), -1);
	    else
		return FUNC2(x + (hx>0 ? -t4pio2 : t4pio2), 1);
	}

    /* tan(Inf or NaN) is NaN */
	else if (ix>=0x7f800000) return x-x;

    /* general argument reduction needed */
	else {
	    n = FUNC1(x,&y);
	    /* integer parameter: 1 -- n even; -1 -- n odd */
	    return FUNC2(y,1-((n&1)<<1));
	}
}