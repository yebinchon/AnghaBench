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
 double FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ,int) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 double half ; 
 double huge ; 
 double one ; 

double
FUNC5(double x)
{
	double t,w;
	int32_t ix;

    /* High word of |x|. */
	FUNC0(ix,x);
	ix &= 0x7fffffff;

    /* x is INF or NaN */
	if(ix>=0x7ff00000) return x*x;	

    /* |x| in [0,0.5*ln2], return 1+expm1(|x|)^2/(2*exp(|x|)) */
	if(ix<0x3fd62e43) {
	    t = FUNC3(FUNC4(x));
	    w = one+t;
	    if (ix<0x3c800000) return w;	/* cosh(tiny) = 1 */
	    return one+(t*t)/(w+w);
	}

    /* |x| in [0.5*ln2,22], return (exp(|x|)+1/exp(|x|)/2; */
	if (ix < 0x40360000) {
		t = FUNC1(FUNC4(x));
		return half*t+half/t;
	}

    /* |x| in [22, log(maxdouble)] return half*exp(|x|) */
	if (ix < 0x40862E42)  return half*FUNC1(FUNC4(x));

    /* |x| in [log(maxdouble), overflowthresold] */
	if (ix<=0x408633CE)
	    return FUNC2(FUNC4(x), -1);

    /* |x| > overflowthresold, cosh(x) overflow */
	return huge*huge;
}