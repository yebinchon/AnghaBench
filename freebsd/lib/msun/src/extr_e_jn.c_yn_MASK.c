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
 double FUNC2 (double) ; 
 int FUNC3 (double) ; 
 double invsqrtpi ; 
 double one ; 
 int /*<<< orphan*/  FUNC4 (double,double*,double*) ; 
 double FUNC5 (double) ; 
 double vzero ; 
 double zero ; 

double
FUNC6(int n, double x)
{
	int32_t i,hx,ix,lx;
	int32_t sign;
	double a, b, c, s, temp;

	FUNC0(hx,lx,x);
	ix = 0x7fffffff&hx;
	/* yn(n,NaN) = NaN */
	if((ix|((u_int32_t)(lx|-lx))>>31)>0x7ff00000) return x+x;
	/* yn(n,+-0) = -inf and raise divide-by-zero exception. */
	if((ix|lx)==0) return -one/vzero;
	/* yn(n,x<0) = NaN and raise invalid exception. */
	if(hx<0) return vzero/vzero;
	sign = 1;
	if(n<0){
		n = -n;
		sign = 1 - ((n&1)<<1);
	}
	if(n==0) return(FUNC2(x));
	if(n==1) return(sign*FUNC3(x));
	if(ix==0x7ff00000) return zero;
	if(ix>=0x52D00000) { /* x > 2**302 */
    /* (x >> n**2)
     *	    Jn(x) = cos(x-(2n+1)*pi/4)*sqrt(2/x*pi)
     *	    Yn(x) = sin(x-(2n+1)*pi/4)*sqrt(2/x*pi)
     *	    Let s=sin(x), c=cos(x),
     *		xn=x-(2n+1)*pi/4, sqt2 = sqrt(2), then
     *
     *		   n	sin(xn)*sqt2	cos(xn)*sqt2
     *		----------------------------------
     *		   0	 s-c		 c+s
     *		   1	-s-c 		-c+s
     *		   2	-s+c		-c-s
     *		   3	 s+c		 c-s
     */
		FUNC4(x, &s, &c);
		switch(n&3) {
		    case 0: temp =  s-c; break;
		    case 1: temp = -s-c; break;
		    case 2: temp = -s+c; break;
		    case 3: temp =  s+c; break;
		}
		b = invsqrtpi*temp/FUNC5(x);
	} else {
	    u_int32_t high;
	    a = FUNC2(x);
	    b = FUNC3(x);
	/* quit if b is -inf */
	    FUNC1(high,b);
	    for(i=1;i<n&&high!=0xfff00000;i++){
		temp = b;
		b = ((double)(i+i)/x)*b - a;
		FUNC1(high,b);
		a = temp;
	    }
	}
	if(sign>0) return b; else return -b;
}