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
 int /*<<< orphan*/  FUNC0 (int,int,double) ; 
 double* U0 ; 
 double* V0 ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 double invsqrtpi ; 
 double one ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (double,double*,double*) ; 
 double FUNC7 (double) ; 
 double tpi ; 
 double vone ; 
 double vzero ; 
 double zero ; 

double
FUNC8(double x)
{
	double z, s,c,ss,cc,u,v;
	int32_t hx,ix,lx;

	FUNC0(hx,lx,x);
        ix = 0x7fffffff&hx;
	/*
	 * y1(NaN) = NaN.
	 * y1(Inf) = 0.
	 * y1(-Inf) = NaN and raise invalid exception.
	 */
	if(ix>=0x7ff00000) return  vone/(x+x*x);
	/* y1(+-0) = -inf and raise divide-by-zero exception. */
        if((ix|lx)==0) return -one/vzero;
	/* y1(x<0) = NaN and raise invalid exception. */
        if(hx<0) return vzero/vzero;
        if(ix >= 0x40000000) {  /* |x| >= 2.0 */
                FUNC6(x, &s, &c);
                ss = -s-c;
                cc = s-c;
                if(ix<0x7fe00000) {  /* make sure x+x not overflow */
                    z = FUNC3(x+x);
                    if ((s*c)>zero) cc = z/ss;
                    else            ss = z/cc;
                }
        /* y1(x) = sqrt(2/(pi*x))*(p1(x)*sin(x0)+q1(x)*cos(x0))
         * where x0 = x-3pi/4
         *      Better formula:
         *              cos(x0) = cos(x)cos(3pi/4)+sin(x)sin(3pi/4)
         *                      =  1/sqrt(2) * (sin(x) - cos(x))
         *              sin(x0) = sin(x)cos(3pi/4)-cos(x)sin(3pi/4)
         *                      = -1/sqrt(2) * (cos(x) + sin(x))
         * To avoid cancellation, use
         *              sin(x) +- cos(x) = -cos(2x)/(sin(x) -+ cos(x))
         * to compute the worse one.
         */
                if(ix>0x48000000) z = (invsqrtpi*ss)/FUNC7(x);
                else {
                    u = FUNC4(x); v = FUNC5(x);
                    z = invsqrtpi*(u*ss+v*cc)/FUNC7(x);
                }
                return z;
        }
        if(ix<=0x3c900000) {    /* x < 2**-54 */
            return(-tpi/x);
        }
        z = x*x;
        u = U0[0]+z*(U0[1]+z*(U0[2]+z*(U0[3]+z*U0[4])));
        v = one+z*(V0[0]+z*(V0[1]+z*(V0[2]+z*(V0[3]+z*V0[4]))));
        return(x*(u/v) + tpi*(FUNC1(x)*FUNC2(x)-one/x));
}