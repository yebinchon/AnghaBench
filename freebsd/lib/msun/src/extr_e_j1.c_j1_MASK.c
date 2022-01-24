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
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double huge ; 
 double invsqrtpi ; 
 double one ; 
 double FUNC3 (double) ; 
 double FUNC4 (double) ; 
 double r00 ; 
 double r01 ; 
 double r02 ; 
 double r03 ; 
 double s01 ; 
 double s02 ; 
 double s03 ; 
 double s04 ; 
 double s05 ; 
 int /*<<< orphan*/  FUNC5 (double,double*,double*) ; 
 double FUNC6 (double) ; 
 double zero ; 

double
FUNC7(double x)
{
	double z, s,c,ss,cc,r,u,v,y;
	int32_t hx,ix;

	FUNC0(hx,x);
	ix = hx&0x7fffffff;
	if(ix>=0x7ff00000) return one/x;
	y = FUNC2(x);
	if(ix >= 0x40000000) {	/* |x| >= 2.0 */
		FUNC5(y, &s, &c);
		ss = -s-c;
		cc = s-c;
		if(ix<0x7fe00000) {  /* make sure y+y not overflow */
		    z = FUNC1(y+y);
		    if ((s*c)>zero) cc = z/ss;
		    else 	    ss = z/cc;
		}
	/*
	 * j1(x) = 1/sqrt(pi) * (P(1,x)*cc - Q(1,x)*ss) / sqrt(x)
	 * y1(x) = 1/sqrt(pi) * (P(1,x)*ss + Q(1,x)*cc) / sqrt(x)
	 */
		if(ix>0x48000000) z = (invsqrtpi*cc)/FUNC6(y);
		else {
		    u = FUNC3(y); v = FUNC4(y);
		    z = invsqrtpi*(u*cc-v*ss)/FUNC6(y);
		}
		if(hx<0) return -z;
		else  	 return  z;
	}
	if(ix<0x3e400000) {	/* |x|<2**-27 */
	    if(huge+x>one) return 0.5*x;/* inexact if x!=0 necessary */
	}
	z = x*x;
	r =  z*(r00+z*(r01+z*(r02+z*r03)));
	s =  one+z*(s01+z*(s02+z*(s03+z*(s04+z*s05))));
	r *= x;
	return(x*0.5+r/s);
}