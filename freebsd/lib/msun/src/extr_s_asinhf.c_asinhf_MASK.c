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
 float FUNC3 (float) ; 
 float huge ; 
 float ln2 ; 
 float FUNC4 (float) ; 
 float one ; 

float
FUNC5(float x)
{
	float t,w;
	int32_t hx,ix;
	FUNC0(hx,x);
	ix = hx&0x7fffffff;
	if(ix>=0x7f800000) return x+x;	/* x is inf or NaN */
	if(ix< 0x31800000) {	/* |x|<2**-28 */
	    if(huge+x>one) return x;	/* return x inexact except 0 */
	}
	if(ix>0x4d800000) {	/* |x| > 2**28 */
	    w = FUNC1(FUNC3(x))+ln2;
	} else if (ix>0x40000000) {	/* 2**28 > |x| > 2.0 */
	    t = FUNC3(x);
	    w = FUNC1((float)2.0*t+one/(FUNC2(x*x+one)+t));
	} else {		/* 2.0 > |x| > 2**-28 */
	    t = x*x;
	    w =FUNC4(FUNC3(x)+t/(one+FUNC2(one+t)));
	}
	if(hx>0) return w; else return -w;
}