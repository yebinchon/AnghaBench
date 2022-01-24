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
 int /*<<< orphan*/  FUNC1 (int,double) ; 
 int /*<<< orphan*/  FUNC2 (double,int) ; 
 double FUNC3 (double,double) ; 
 double huge ; 
 double tiny ; 
 double two54 ; 
 double twom54 ; 

double
FUNC4(double x, int n)
{
	int32_t k,hx,lx;
	FUNC0(hx,lx,x);
        k = (hx&0x7ff00000)>>20;		/* extract exponent */
        if (k==0) {				/* 0 or subnormal x */
            if ((lx|(hx&0x7fffffff))==0) return x; /* +-0 */
	    x *= two54;
	    FUNC1(hx,x);
	    k = ((hx&0x7ff00000)>>20) - 54;
            if (n< -50000) return tiny*x; 	/*underflow*/
	    }
        if (k==0x7ff) return x+x;		/* NaN or Inf */
        k = k+n;
        if (k >  0x7fe) return huge*FUNC3(huge,x); /* overflow  */
        if (k > 0) 				/* normal result */
	    {FUNC2(x,(hx&0x800fffff)|(k<<20)); return x;}
        if (k <= -54) {
            if (n > 50000) 	/* in case integer overflow in n+k */
		return huge*FUNC3(huge,x);	/*overflow*/
	    else return tiny*FUNC3(tiny,x); 	/*underflow*/
	}
        k += 54;				/* subnormal result */
	FUNC2(x,(hx&0x800fffff)|(k<<20));
        return x*twom54;
}