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
 int /*<<< orphan*/  FUNC0 (int,double) ; 
 int /*<<< orphan*/  FUNC1 (int,double) ; 
 int /*<<< orphan*/  FUNC2 (double,int) ; 
 double FUNC3 (double) ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 

double
FUNC6(double x, double y)
{
	double a,b,t1,t2,y1,y2,w;
	int32_t j,k,ha,hb;

	FUNC0(ha,x);
	ha &= 0x7fffffff;
	FUNC0(hb,y);
	hb &= 0x7fffffff;
	if(hb > ha) {a=y;b=x;j=ha; ha=hb;hb=j;} else {a=x;b=y;}
	a = FUNC3(a);
	b = FUNC3(b);
	if((ha-hb)>0x3c00000) {return a+b;} /* x/y > 2**60 */
	k=0;
	if(ha > 0x5f300000) {	/* a>2**500 */
	   if(ha >= 0x7ff00000) {	/* Inf or NaN */
	       u_int32_t low;
	       /* Use original arg order iff result is NaN; quieten sNaNs. */
	       w = FUNC4(x+0.0L)-FUNC3(y+0);
	       FUNC1(low,a);
	       if(((ha&0xfffff)|low)==0) w = a;
	       FUNC1(low,b);
	       if(((hb^0x7ff00000)|low)==0) w = b;
	       return w;
	   }
	   /* scale a and b by 2**-600 */
	   ha -= 0x25800000; hb -= 0x25800000;	k += 600;
	   FUNC2(a,ha);
	   FUNC2(b,hb);
	}
	if(hb < 0x20b00000) {	/* b < 2**-500 */
	    if(hb <= 0x000fffff) {	/* subnormal b or 0 */
	        u_int32_t low;
		FUNC1(low,b);
		if((hb|low)==0) return a;
		t1=0;
		FUNC2(t1,0x7fd00000);	/* t1=2^1022 */
		b *= t1;
		a *= t1;
		k -= 1022;
	    } else {		/* scale a and b by 2^600 */
	        ha += 0x25800000; 	/* a *= 2^600 */
		hb += 0x25800000;	/* b *= 2^600 */
		k -= 600;
		FUNC2(a,ha);
		FUNC2(b,hb);
	    }
	}
    /* medium size a and b */
	w = a-b;
	if (w>b) {
	    t1 = 0;
	    FUNC2(t1,ha);
	    t2 = a-t1;
	    w  = FUNC5(t1*t1-(b*(-b)-t2*(a+t1)));
	} else {
	    a  = a+a;
	    y1 = 0;
	    FUNC2(y1,hb);
	    y2 = b - y1;
	    t1 = 0;
	    FUNC2(t1,ha+0x00100000);
	    t2 = a - t1;
	    w  = FUNC5(t1*y1-(w*(-w)-(t1*y2+t2*b)));
	}
	if(k!=0) {
	    u_int32_t high;
	    t1 = 1.0;
	    FUNC0(high,t1);
	    FUNC2(t1,high+(k<<20));
	    return t1*w;
	} else return w;
}