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
 int /*<<< orphan*/  FUNC0 (int,float) ; 
 int /*<<< orphan*/  FUNC1 (float,int) ; 
 float huge ; 

float
FUNC2(float x)
{
	int32_t i0,j0;
	u_int32_t i;

	FUNC0(i0,x);
	j0 = ((i0>>23)&0xff)-0x7f;
	if(j0<23) {
	    if(j0<0) { 	/* raise inexact if x != 0 */
		if(huge+x>(float)0.0) {/* return 0*sign(x) if |x|<1 */
		    if(i0<0) {i0=0x80000000;}
		    else if(i0!=0) { i0=0x3f800000;}
		}
	    } else {
		i = (0x007fffff)>>j0;
		if((i0&i)==0) return x; /* x is integral */
		if(huge+x>(float)0.0) {	/* raise inexact flag */
		    if(i0>0) i0 += (0x00800000)>>j0;
		    i0 &= (~i);
		}
	    }
	} else {
	    if(j0==0x80) return x+x;	/* inf or NaN */
	    else return x;		/* x is integral */
	}
	FUNC1(x,i0);
	return x;
}