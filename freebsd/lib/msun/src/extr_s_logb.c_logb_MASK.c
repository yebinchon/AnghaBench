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
 double FUNC2 (double) ; 
 double two54 ; 

double
FUNC3(double x)
{
	int32_t lx,ix;
	FUNC0(ix,lx,x);
	ix &= 0x7fffffff;			/* high |x| */
	if((ix|lx)==0) return -1.0/FUNC2(x);
	if(ix>=0x7ff00000) return x*x;
	if(ix<0x00100000) {
		x *= two54;		 /* convert subnormal x to normal */
		FUNC1(ix,x);
		ix &= 0x7fffffff;
		return (double) ((ix>>20)-1023-54);
	} else
		return (double) ((ix>>20)-1023);
}