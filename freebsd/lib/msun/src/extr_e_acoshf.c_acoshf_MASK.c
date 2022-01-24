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
 float FUNC1 (float) ; 
 float FUNC2 (float) ; 
 float ln2 ; 
 float FUNC3 (float) ; 
 float one ; 

float
FUNC4(float x)
{
	float t;
	int32_t hx;
	FUNC0(hx,x);
	if(hx<0x3f800000) {		/* x < 1 */
	    return (x-x)/(x-x);
	} else if(hx >=0x4d800000) {	/* x > 2**28 */
	    if(hx >=0x7f800000) {	/* x is inf of NaN */
	        return x+x;
	    } else
		return FUNC1(x)+ln2;	/* acosh(huge)=log(2x) */
	} else if (hx==0x3f800000) {
	    return 0.0;			/* acosh(1) = 0 */
	} else if (hx > 0x40000000) {	/* 2**28 > x > 2 */
	    t=x*x;
	    return FUNC1((float)2.0*x-one/(x+FUNC2(t-one)));
	} else {			/* 1<x<2 */
	    t = x-one;
	    return FUNC3(t+FUNC2((float)2.0*t+t*t));
	}
}