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
 int /*<<< orphan*/  FUNC1 (float,int) ; 
 float huge ; 
 float FUNC2 (float) ; 
 float one ; 
 float zero ; 

float
FUNC3(float x)
{
	float t;
	int32_t hx,ix;
	FUNC0(hx,x);
	ix = hx&0x7fffffff;
	if (ix>0x3f800000) 		/* |x|>1 */
	    return (x-x)/(x-x);
	if(ix==0x3f800000)
	    return x/zero;
	if(ix<0x31800000&&(huge+x)>zero) return x;	/* x<2**-28 */
	FUNC1(x,ix);
	if(ix<0x3f000000) {		/* x < 0.5 */
	    t = x+x;
	    t = (float)0.5*FUNC2(t+t*x/(one-x));
	} else
	    t = (float)0.5*FUNC2((x+x)/(one-x));
	if(hx>=0) return t; else return -t;
}