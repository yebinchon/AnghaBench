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
 int /*<<< orphan*/  FUNC1 (float,int) ; 
 float FUNC2 (float,float) ; 
 float huge ; 
 float tiny ; 
 float two25 ; 
 float twom25 ; 

float
FUNC3 (float x, int n)
{
	int32_t k,ix;
	FUNC0(ix,x);
        k = (ix&0x7f800000)>>23;		/* extract exponent */
        if (k==0) {				/* 0 or subnormal x */
            if ((ix&0x7fffffff)==0) return x; /* +-0 */
	    x *= two25;
	    FUNC0(ix,x);
	    k = ((ix&0x7f800000)>>23) - 25;
            if (n< -50000) return tiny*x; 	/*underflow*/
	    }
        if (k==0xff) return x+x;		/* NaN or Inf */
        k = k+n;
        if (k >  0xfe) return huge*FUNC2(huge,x); /* overflow  */
        if (k > 0) 				/* normal result */
	    {FUNC1(x,(ix&0x807fffff)|(k<<23)); return x;}
        if (k <= -25) {
            if (n > 50000) 	/* in case integer overflow in n+k */
		return huge*FUNC2(huge,x);	/*overflow*/
	    else
		return tiny*FUNC2(tiny,x);	/*underflow*/
	}
        k += 25;				/* subnormal result */
	FUNC1(x,(ix&0x807fffff)|(k<<23));
        return x*twom25;
}