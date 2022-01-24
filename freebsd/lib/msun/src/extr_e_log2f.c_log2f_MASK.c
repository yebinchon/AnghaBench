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
typedef  float float_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,float) ; 
 int /*<<< orphan*/  FUNC1 (float,int) ; 
 float ivln2hi ; 
 float ivln2lo ; 
 float FUNC2 (float) ; 
 float two25 ; 
 float vzero ; 
 float zero ; 

float
FUNC3(float x)
{
	float f,hfsq,hi,lo,r,y;
	int32_t i,k,hx;

	FUNC0(hx,x);

	k=0;
	if (hx < 0x00800000) {			/* x < 2**-126  */
	    if ((hx&0x7fffffff)==0)
		return -two25/vzero;		/* log(+-0)=-inf */
	    if (hx<0) return (x-x)/zero;	/* log(-#) = NaN */
	    k -= 25; x *= two25; /* subnormal number, scale up x */
	    FUNC0(hx,x);
	}
	if (hx >= 0x7f800000) return x+x;
	if (hx == 0x3f800000)
	    return zero;			/* log(1) = +0 */
	k += (hx>>23)-127;
	hx &= 0x007fffff;
	i = (hx+(0x4afb0d))&0x800000;
	FUNC1(x,hx|(i^0x3f800000));	/* normalize x or x/2 */
	k += (i>>23);
	y = (float)k;
	f = x - (float)1.0;
	hfsq = (float)0.5*f*f;
	r = FUNC2(f);

	/*
	 * We no longer need to avoid falling into the multi-precision
	 * calculations due to compiler bugs breaking Dekker's theorem.
	 * Keep avoiding this as an optimization.  See e_log2.c for more
	 * details (some details are here only because the optimization
	 * is not yet available in double precision).
	 *
	 * Another compiler bug turned up.  With gcc on i386,
	 * (ivln2lo + ivln2hi) would be evaluated in float precision
	 * despite runtime evaluations using double precision.  So we
	 * must cast one of its terms to float_t.  This makes the whole
	 * expression have type float_t, so return is forced to waste
	 * time clobbering its extra precision.
	 */
	if (sizeof(float_t) > sizeof(float))
		return (r - hfsq + f) * ((float_t)ivln2lo + ivln2hi) + y;

	hi = f - hfsq;
	FUNC0(hx,hi);
	FUNC1(hi,hx&0xfffff000);
	lo = (f - hi) - hfsq + r;
	return (lo+hi)*ivln2lo + lo*ivln2hi + hi*ivln2hi + y;
}