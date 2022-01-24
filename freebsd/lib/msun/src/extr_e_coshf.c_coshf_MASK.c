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
 float FUNC1 (int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ,int) ; 
 float FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float) ; 
 float half ; 
 float huge ; 
 float one ; 

float
FUNC5(float x)
{
	float t,w;
	int32_t ix;

	FUNC0(ix,x);
	ix &= 0x7fffffff;

    /* x is INF or NaN */
	if(ix>=0x7f800000) return x*x;

    /* |x| in [0,0.5*ln2], return 1+expm1(|x|)^2/(2*exp(|x|)) */
	if(ix<0x3eb17218) {
	    t = FUNC3(FUNC4(x));
	    w = one+t;
	    if (ix<0x39800000) return one;	/* cosh(tiny) = 1 */
	    return one+(t*t)/(w+w);
	}

    /* |x| in [0.5*ln2,9], return (exp(|x|)+1/exp(|x|))/2; */
	if (ix < 0x41100000) {
		t = FUNC1(FUNC4(x));
		return half*t+half/t;
	}

    /* |x| in [9, log(maxfloat)] return half*exp(|x|) */
	if (ix < 0x42b17217)  return half*FUNC1(FUNC4(x));

    /* |x| in [log(maxfloat), overflowthresold] */
	if (ix<=0x42b2d4fc)
	    return FUNC2(FUNC4(x), -1);

    /* |x| > overflowthresold, cosh(x) overflow */
	return huge*huge;
}