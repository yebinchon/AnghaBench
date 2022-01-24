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
 double R02 ; 
 double R03 ; 
 double R04 ; 
 double R05 ; 
 double S01 ; 
 double S02 ; 
 double S03 ; 
 double S04 ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double huge ; 
 double invsqrtpi ; 
 double one ; 
 double FUNC3 (double) ; 
 double qrtr ; 
 double FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (double,double*,double*) ; 
 double FUNC6 (double) ; 
 double zero ; 

double
FUNC7(double x)
{
	double z, s,c,ss,cc,r,u,v;
	int32_t hx,ix;

	FUNC0(hx,x);
	ix = hx&0x7fffffff;
	if(ix>=0x7ff00000) return one/(x*x);
	x = FUNC2(x);
	if(ix >= 0x40000000) {	/* |x| >= 2.0 */
		FUNC5(x, &s, &c);
		ss = s-c;
		cc = s+c;
		if(ix<0x7fe00000) {  /* Make sure x+x does not overflow. */
		    z = -FUNC1(x+x);
		    if ((s*c)<zero) cc = z/ss;
		    else 	    ss = z/cc;
		}
	/*
	 * j0(x) = 1/sqrt(pi) * (P(0,x)*cc - Q(0,x)*ss) / sqrt(x)
	 * y0(x) = 1/sqrt(pi) * (P(0,x)*ss + Q(0,x)*cc) / sqrt(x)
	 */
		if(ix>0x48000000) z = (invsqrtpi*cc)/FUNC6(x);
		else {
		    u = FUNC3(x); v = FUNC4(x);
		    z = invsqrtpi*(u*cc-v*ss)/FUNC6(x);
		}
		return z;
	}
	if(ix<0x3f200000) {	/* |x| < 2**-13 */
	    if(huge+x>one) {	/* raise inexact if x != 0 */
	        if(ix<0x3e400000) return one;	/* |x|<2**-27 */
	        else 	      return one - x*x/4;
	    }
	}
	z = x*x;
	r =  z*(R02+z*(R03+z*(R04+z*R05)));
	s =  one+z*(S01+z*(S02+z*(S03+z*S04)));
	if(ix < 0x3FF00000) {	/* |x| < 1.00 */
	    return one + z*((r/s)-qrtr);
	} else {
	    u = x/2;
	    return((one+u)*(one-u)+z*(r/s));
	}
}