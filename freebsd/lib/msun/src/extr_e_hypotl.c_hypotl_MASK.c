#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ manl; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;
typedef  int u_int32_t ;
typedef  scalar_t__ man_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,long double) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,long double) ; 
 scalar_t__ LDBL_NBIT ; 
 int MANT_DIG ; 
 int MAX_EXP ; 
 int /*<<< orphan*/  FUNC4 (long double,int) ; 
 long double FUNC5 (long double) ; 
 long double FUNC6 (long double) ; 

long double
FUNC7(long double x, long double y)
{
	long double a=x,b=y,t1,t2,y1,y2,w;
	int32_t j,k,ha,hb;

	FUNC2(ha,x);
	ha &= 0x7fff;
	FUNC2(hb,y);
	hb &= 0x7fff;
	if(hb > ha) {a=y;b=x;j=ha; ha=hb;hb=j;} else {a=x;b=y;}
	a = FUNC5(a);
	b = FUNC5(b);
	if((ha-hb)>FUNC0(MANT_DIG+7)) {return a+b;} /* x/y > 2**(MANT_DIG+7) */
	k=0;
	if(ha > FUNC1(MAX_EXP/2-12)) {	/* a>2**(MAX_EXP/2-12) */
	   if(ha >= FUNC1(MAX_EXP)) {	/* Inf or NaN */
	       man_t manh, manl;
	       /* Use original arg order iff result is NaN; quieten sNaNs. */
	       w = FUNC5(x+0.0L)-FUNC5(y+0);
	       FUNC3(manh,manl,a);
	       if (manh == LDBL_NBIT && manl == 0) w = a;
	       FUNC3(manh,manl,b);
	       if (hb >= FUNC1(MAX_EXP) && manh == LDBL_NBIT && manl == 0) w = b;
	       return w;
	   }
	   /* scale a and b by 2**-(MAX_EXP/2+88) */
	   ha -= FUNC0(MAX_EXP/2+88); hb -= FUNC0(MAX_EXP/2+88);
	   k += MAX_EXP/2+88;
	   FUNC4(a,ha);
	   FUNC4(b,hb);
	}
	if(hb < FUNC1(-(MAX_EXP/2-12))) {	/* b < 2**-(MAX_EXP/2-12) */
	    if(hb <= 0) {		/* subnormal b or 0 */
	        man_t manh, manl;
		FUNC3(manh,manl,b);
		if((manh|manl)==0) return a;
		t1=0;
		FUNC4(t1,FUNC1(MAX_EXP-2));	/* t1=2^(MAX_EXP-2) */
		b *= t1;
		a *= t1;
		k -= MAX_EXP-2;
	    } else {		/* scale a and b by 2^(MAX_EXP/2+88) */
		ha += FUNC0(MAX_EXP/2+88);
		hb += FUNC0(MAX_EXP/2+88);
		k -= MAX_EXP/2+88;
		FUNC4(a,ha);
		FUNC4(b,hb);
	    }
	}
    /* medium size a and b */
	w = a-b;
	if (w>b) {
	    t1 = a;
	    union IEEEl2bits uv;
	    uv.e = t1; uv.bits.manl = 0; t1 = uv.e;
	    t2 = a-t1;
	    w  = FUNC6(t1*t1-(b*(-b)-t2*(a+t1)));
	} else {
	    a  = a+a;
	    y1 = b;
	    union IEEEl2bits uv;
	    uv.e = y1; uv.bits.manl = 0; y1 = uv.e;
	    y2 = b - y1;
	    t1 = a;
	    uv.e = t1; uv.bits.manl = 0; t1 = uv.e;
	    t2 = a - t1;
	    w  = FUNC6(t1*y1-(w*(-w)-(t1*y2+t2*b)));
	}
	if(k!=0) {
	    u_int32_t high;
	    t1 = 1.0;
	    FUNC2(high,t1);
	    FUNC4(t1,high+FUNC0(k));
	    return t1*w;
	} else return w;
}