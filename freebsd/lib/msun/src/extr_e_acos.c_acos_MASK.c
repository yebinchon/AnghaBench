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
 int /*<<< orphan*/  FUNC1 (int,double) ; 
 int /*<<< orphan*/  FUNC2 (double,int /*<<< orphan*/ ) ; 
 double one ; 
 double pS0 ; 
 double pS1 ; 
 double pS2 ; 
 double pS3 ; 
 double pS4 ; 
 double pS5 ; 
 double pi ; 
 double pio2_hi ; 
 double pio2_lo ; 
 double qS1 ; 
 double qS2 ; 
 double qS3 ; 
 double qS4 ; 
 double FUNC3 (double) ; 

double
FUNC4(double x)
{
	double z,p,q,r,w,s,c,df;
	int32_t hx,ix;
	FUNC0(hx,x);
	ix = hx&0x7fffffff;
	if(ix>=0x3ff00000) {	/* |x| >= 1 */
	    u_int32_t lx;
	    FUNC1(lx,x);
	    if(((ix-0x3ff00000)|lx)==0) {	/* |x|==1 */
		if(hx>0) return 0.0;		/* acos(1) = 0  */
		else return pi+2.0*pio2_lo;	/* acos(-1)= pi */
	    }
	    return (x-x)/(x-x);		/* acos(|x|>1) is NaN */
	}
	if(ix<0x3fe00000) {	/* |x| < 0.5 */
	    if(ix<=0x3c600000) return pio2_hi+pio2_lo;/*if|x|<2**-57*/
	    z = x*x;
	    p = z*(pS0+z*(pS1+z*(pS2+z*(pS3+z*(pS4+z*pS5)))));
	    q = one+z*(qS1+z*(qS2+z*(qS3+z*qS4)));
	    r = p/q;
	    return pio2_hi - (x - (pio2_lo-x*r));
	} else  if (hx<0) {		/* x < -0.5 */
	    z = (one+x)*0.5;
	    p = z*(pS0+z*(pS1+z*(pS2+z*(pS3+z*(pS4+z*pS5)))));
	    q = one+z*(qS1+z*(qS2+z*(qS3+z*qS4)));
	    s = FUNC3(z);
	    r = p/q;
	    w = r*s-pio2_lo;
	    return pi - 2.0*(s+w);
	} else {			/* x > 0.5 */
	    z = (one-x)*0.5;
	    s = FUNC3(z);
	    df = s;
	    FUNC2(df,0);
	    c  = (z-df*df)/(s+df);
	    p = z*(pS0+z*(pS1+z*(pS2+z*(pS3+z*(pS4+z*pS5)))));
	    q = one+z*(qS1+z*(qS2+z*(qS3+z*qS4)));
	    r = p/q;
	    w = r*s+c;
	    return 2.0*(df+w);
	}
}