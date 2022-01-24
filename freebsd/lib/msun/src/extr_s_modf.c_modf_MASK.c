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
 int /*<<< orphan*/  FUNC0 (int,int,double) ; 
 int /*<<< orphan*/  FUNC1 (int,double) ; 
 int /*<<< orphan*/  FUNC2 (double,int,int) ; 
 double one ; 

double
FUNC3(double x, double *iptr)
{
	int32_t i0,i1,j0;
	u_int32_t i;
	FUNC0(i0,i1,x);
	j0 = ((i0>>20)&0x7ff)-0x3ff;	/* exponent of x */
	if(j0<20) {			/* integer part in high x */
	    if(j0<0) {			/* |x|<1 */
	        FUNC2(*iptr,i0&0x80000000,0);	/* *iptr = +-0 */
		return x;
	    } else {
		i = (0x000fffff)>>j0;
		if(((i0&i)|i1)==0) {		/* x is integral */
		    u_int32_t high;
		    *iptr = x;
		    FUNC1(high,x);
		    FUNC2(x,high&0x80000000,0);	/* return +-0 */
		    return x;
		} else {
		    FUNC2(*iptr,i0&(~i),0);
		    return x - *iptr;
		}
	    }
	} else if (j0>51) {		/* no fraction part */
	    u_int32_t high;
	    if (j0 == 0x400) {		/* inf/NaN */
		*iptr = x;
		return 0.0 / x;
	    }
	    *iptr = x*one;
	    FUNC1(high,x);
	    FUNC2(x,high&0x80000000,0);	/* return +-0 */
	    return x;
	} else {			/* fraction part in low x */
	    i = ((u_int32_t)(0xffffffff))>>(j0-20);
	    if((i1&i)==0) { 		/* x is integral */
	        u_int32_t high;
		*iptr = x;
		FUNC1(high,x);
		FUNC2(x,high&0x80000000,0);	/* return +-0 */
		return x;
	    } else {
	        FUNC2(*iptr,i0,i1&(~i));
		return x - *iptr;
	    }
	}
}