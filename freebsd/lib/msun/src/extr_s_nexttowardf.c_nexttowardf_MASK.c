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
struct TYPE_2__ {scalar_t__ exp; int manh; int manl; int sign; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,float) ; 
 scalar_t__ LDBL_INFNAN_EXP ; 
 int LDBL_NBIT ; 
 int /*<<< orphan*/  FUNC1 (float,int) ; 

float
FUNC2(float x, long double y)
{
	union IEEEl2bits uy;
	volatile float t;
	int32_t hx,ix;

	FUNC0(hx,x);
	ix = hx&0x7fffffff;		/* |x| */
	uy.e = y;

	if((ix>0x7f800000) ||
	   (uy.bits.exp == LDBL_INFNAN_EXP &&
	    ((uy.bits.manh&~LDBL_NBIT)|uy.bits.manl) != 0))
	   return x+y;	/* x or y is nan */
	if(x==y) return (float)y;		/* x=y, return y */
	if(ix==0) {				/* x == 0 */
	    FUNC1(x,(uy.bits.sign<<31)|1);/* return +-minsubnormal */
	    t = x*x;
	    if(t==x) return t; else return x;	/* raise underflow flag */
	}
	if(hx>=0 ^ x < y)			/* x -= ulp */
	    hx -= 1;
	else					/* x += ulp */
	    hx += 1;
	ix = hx&0x7f800000;
	if(ix>=0x7f800000) return x+x;	/* overflow  */
	if(ix<0x00800000) {		/* underflow */
	    t = x*x;
	    if(t!=x) {		/* raise underflow flag */
	        FUNC1(x,hx);
		return x;
	    }
	}
	FUNC1(x,hx);
	return x;
}