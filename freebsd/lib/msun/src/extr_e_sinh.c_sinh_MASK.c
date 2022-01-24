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
 double one ; 
 double shuge ; 

double
FUNC5(double x)
{
	double t,h;
	int32_t ix,jx;

    /* High word of |x|. */
	FUNC0(jx,x);
	ix = jx&0x7fffffff;

    /* x is INF or NaN */
	if(ix>=0x7ff00000) return x+x;	

	h = 0.5;
	if (jx<0) h = -h;
    /* |x| in [0,22], return sign(x)*0.5*(E+E/(E+1))) */
	if (ix < 0x40360000) {		/* |x|<22 */
	    if (ix<0x3e300000) 		/* |x|<2**-28 */
		if(shuge+x>one) return x;/* sinh(tiny) = tiny with inexact */
	    t = FUNC3(FUNC4(x));
	    if(ix<0x3ff00000) return h*(2.0*t-t*t/(t+one));
	    return h*(t+t/(t+one));
	}

    /* |x| in [22, log(maxdouble)] return 0.5*exp(|x|) */
	if (ix < 0x40862E42)  return h*FUNC1(FUNC4(x));

    /* |x| in [log(maxdouble), overflowthresold] */
	if (ix<=0x408633CE)
	    return h*2.0*FUNC2(FUNC4(x), -1);

    /* |x| > overflowthresold, sinh(x) overflow */
	return x*shuge;
}