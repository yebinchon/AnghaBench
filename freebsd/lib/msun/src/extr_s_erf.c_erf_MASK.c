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
typedef  int u_int32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,double) ; 
 int /*<<< orphan*/  FUNC1 (double,int /*<<< orphan*/ ) ; 
 double FUNC2 (double) ; 
 double efx ; 
 double efx8 ; 
 double erx ; 
 double FUNC3 (double) ; 
 double one ; 
 double pa0 ; 
 double pa1 ; 
 double pa2 ; 
 double pa3 ; 
 double pa4 ; 
 double pa5 ; 
 double pa6 ; 
 double pp0 ; 
 double pp1 ; 
 double pp2 ; 
 double pp3 ; 
 double pp4 ; 
 double qa1 ; 
 double qa2 ; 
 double qa3 ; 
 double qa4 ; 
 double qa5 ; 
 double qa6 ; 
 double qq1 ; 
 double qq2 ; 
 double qq3 ; 
 double qq4 ; 
 double qq5 ; 
 double ra0 ; 
 double ra1 ; 
 double ra2 ; 
 double ra3 ; 
 double ra4 ; 
 double ra5 ; 
 double ra6 ; 
 double ra7 ; 
 double rb0 ; 
 double rb1 ; 
 double rb2 ; 
 double rb3 ; 
 double rb4 ; 
 double rb5 ; 
 double rb6 ; 
 double sa1 ; 
 double sa2 ; 
 double sa3 ; 
 double sa4 ; 
 double sa5 ; 
 double sa6 ; 
 double sa7 ; 
 double sa8 ; 
 double sb1 ; 
 double sb2 ; 
 double sb3 ; 
 double sb4 ; 
 double sb5 ; 
 double sb6 ; 
 double sb7 ; 
 double tiny ; 

double
FUNC4(double x)
{
	int32_t hx,ix,i;
	double R,S,P,Q,s,y,z,r;
	FUNC0(hx,x);
	ix = hx&0x7fffffff;
	if(ix>=0x7ff00000) {		/* erf(nan)=nan */
	    i = ((u_int32_t)hx>>31)<<1;
	    return (double)(1-i)+one/x;	/* erf(+-inf)=+-1 */
	}

	if(ix < 0x3feb0000) {		/* |x|<0.84375 */
	    if(ix < 0x3e300000) { 	/* |x|<2**-28 */
	        if (ix < 0x00800000)
		    return (8*x+efx8*x)/8;	/* avoid spurious underflow */
		return x + efx*x;
	    }
	    z = x*x;
	    r = pp0+z*(pp1+z*(pp2+z*(pp3+z*pp4)));
	    s = one+z*(qq1+z*(qq2+z*(qq3+z*(qq4+z*qq5))));
	    y = r/s;
	    return x + x*y;
	}
	if(ix < 0x3ff40000) {		/* 0.84375 <= |x| < 1.25 */
	    s = FUNC3(x)-one;
	    P = pa0+s*(pa1+s*(pa2+s*(pa3+s*(pa4+s*(pa5+s*pa6)))));
	    Q = one+s*(qa1+s*(qa2+s*(qa3+s*(qa4+s*(qa5+s*qa6)))));
	    if(hx>=0) return erx + P/Q; else return -erx - P/Q;
	}
	if (ix >= 0x40180000) {		/* inf>|x|>=6 */
	    if(hx>=0) return one-tiny; else return tiny-one;
	}
	x = FUNC3(x);
 	s = one/(x*x);
	if(ix< 0x4006DB6E) {	/* |x| < 1/0.35 */
	    R=ra0+s*(ra1+s*(ra2+s*(ra3+s*(ra4+s*(ra5+s*(ra6+s*ra7))))));
	    S=one+s*(sa1+s*(sa2+s*(sa3+s*(sa4+s*(sa5+s*(sa6+s*(sa7+
		s*sa8)))))));
	} else {	/* |x| >= 1/0.35 */
	    R=rb0+s*(rb1+s*(rb2+s*(rb3+s*(rb4+s*(rb5+s*rb6)))));
	    S=one+s*(sb1+s*(sb2+s*(sb3+s*(sb4+s*(sb5+s*(sb6+s*sb7))))));
	}
	z  = x;
	FUNC1(z,0);
	r  =  FUNC2(-z*z-0.5625)*FUNC2((z-x)*(z+x)+R/S);
	if(hx>=0) return one-r/x; else return  r/x-one;
}