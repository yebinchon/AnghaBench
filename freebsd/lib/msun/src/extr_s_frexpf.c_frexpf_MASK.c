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
 float two25 ; 

float
FUNC2(float x, int *eptr)
{
	int32_t hx,ix;
	FUNC0(hx,x);
	ix = 0x7fffffff&hx;
	*eptr = 0;
	if(ix>=0x7f800000||(ix==0)) return x;	/* 0,inf,nan */
	if (ix<0x00800000) {		/* subnormal */
	    x *= two25;
	    FUNC0(hx,x);
	    ix = hx&0x7fffffff;
	    *eptr = -25;
	}
	*eptr += (ix>>23)-126;
	hx = (hx&0x807fffff)|0x3f000000;
	FUNC1(x,hx);
	return x;
}