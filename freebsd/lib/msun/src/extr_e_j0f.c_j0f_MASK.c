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
 float R02 ; 
 float R03 ; 
 float R04 ; 
 float R05 ; 
 float S01 ; 
 float S02 ; 
 float S03 ; 
 float S04 ; 
 float FUNC1 (float) ; 
 float FUNC2 (float) ; 
 float huge ; 
 float invsqrtpi ; 
 float one ; 
 float FUNC3 (float) ; 
 float qrtr ; 
 float FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (float,float*,float*) ; 
 float FUNC6 (float) ; 
 float zero ; 

float
FUNC7(float x)
{
	float z, s,c,ss,cc,r,u,v;
	int32_t hx,ix;

	FUNC0(hx,x);
	ix = hx&0x7fffffff;
	if(ix>=0x7f800000) return one/(x*x);
	x = FUNC2(x);
	if(ix >= 0x40000000) {	/* |x| >= 2.0 */
		FUNC5(x, &s, &c);
		ss = s-c;
		cc = s+c;
		if(ix<0x7f000000) {  /* Make sure x+x does not overflow. */
		    z = -FUNC1(x+x);
		    if ((s*c)<zero) cc = z/ss;
		    else 	    ss = z/cc;
		}
	/*
	 * j0(x) = 1/sqrt(pi) * (P(0,x)*cc - Q(0,x)*ss) / sqrt(x)
	 * y0(x) = 1/sqrt(pi) * (P(0,x)*ss + Q(0,x)*cc) / sqrt(x)
	 */
		if(ix>0x58000000) z = (invsqrtpi*cc)/FUNC6(x); /* |x|>2**49 */
		else {
		    u = FUNC3(x); v = FUNC4(x);
		    z = invsqrtpi*(u*cc-v*ss)/FUNC6(x);
		}
		return z;
	}
	if(ix<0x3b000000) {	/* |x| < 2**-9 */
	    if(huge+x>one) {	/* raise inexact if x != 0 */
	        if(ix<0x39800000) return one;	/* |x|<2**-12 */
	        else 	      return one - x*x/4;
	    }
	}
	z = x*x;
	r =  z*(R02+z*(R03+z*(R04+z*R05)));
	s =  one+z*(S01+z*(S02+z*(S03+z*S04)));
	if(ix < 0x3F800000) {	/* |x| < 1.00 */
	    return one + z*((r/s)-qrtr);
	} else {
	    u = x/2;
	    return((one+u)*(one-u)+z*(r/s));
	}
}