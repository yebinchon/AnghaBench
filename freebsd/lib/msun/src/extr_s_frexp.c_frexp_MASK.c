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
 double two54 ; 

double
FUNC3(double x, int *eptr)
{
	int32_t hx, ix, lx;
	FUNC0(hx,lx,x);
	ix = 0x7fffffff&hx;
	*eptr = 0;
	if(ix>=0x7ff00000||((ix|lx)==0)) return x;	/* 0,inf,nan */
	if (ix<0x00100000) {		/* subnormal */
	    x *= two54;
	    FUNC1(hx,x);
	    ix = hx&0x7fffffff;
	    *eptr = -54;
	}
	*eptr += (ix>>20)-1022;
	hx = (hx&0x800fffff)|0x3fe00000;
	FUNC2(x,hx);
	return x;
}