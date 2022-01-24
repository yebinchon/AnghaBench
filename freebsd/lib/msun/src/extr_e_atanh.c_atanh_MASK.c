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
 int /*<<< orphan*/  FUNC1 (double,int) ; 
 double huge ; 
 double FUNC2 (double) ; 
 double one ; 
 double zero ; 

double
FUNC3(double x)
{
	double t;
	int32_t hx,ix;
	u_int32_t lx;
	FUNC0(hx,lx,x);
	ix = hx&0x7fffffff;
	if ((ix|((lx|(-lx))>>31))>0x3ff00000) /* |x|>1 */
	    return (x-x)/(x-x);
	if(ix==0x3ff00000) 
	    return x/zero;
	if(ix<0x3e300000&&(huge+x)>zero) return x;	/* x<2**-28 */
	FUNC1(x,ix);
	if(ix<0x3fe00000) {		/* x < 0.5 */
	    t = x+x;
	    t = 0.5*FUNC2(t+t*x/(one-x));
	} else 
	    t = 0.5*FUNC2((x+x)/(one-x));
	if(hx>=0) return t; else return -t;
}