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
 float FUNC1 (float) ; 
 int FUNC2 (float) ; 
 float one ; 
 float vzero ; 
 float zero ; 

float
FUNC3(int n, float x)
{
	int32_t i,hx,ix,ib;
	int32_t sign;
	float a, b, temp;

	FUNC0(hx,x);
	ix = 0x7fffffff&hx;
	if(ix>0x7f800000) return x+x;
	if(ix==0) return -one/vzero;
	if(hx<0) return vzero/vzero;
	sign = 1;
	if(n<0){
		n = -n;
		sign = 1 - ((n&1)<<1);
	}
	if(n==0) return(FUNC1(x));
	if(n==1) return(sign*FUNC2(x));
	if(ix==0x7f800000) return zero;

	a = FUNC1(x);
	b = FUNC2(x);
	/* quit if b is -inf */
	FUNC0(ib,b);
	for(i=1;i<n&&ib!=0xff800000;i++){
	    temp = b;
	    b = ((float)(i+i)/x)*b - a;
	    FUNC0(ib,b);
	    a = temp;
	}
	if(sign>0) return b; else return -b;
}