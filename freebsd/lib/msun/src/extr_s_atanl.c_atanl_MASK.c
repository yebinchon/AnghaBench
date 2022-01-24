#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int manh; int manl; } ;
struct TYPE_3__ {int expsign; } ;
union IEEEl2bits {long double e; TYPE_2__ bits; TYPE_1__ xbits; } ;
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 int ATAN_CONST ; 
 int ATAN_LINEAR ; 
 int BIAS ; 
 int LDBL_MAX_EXP ; 
 int LDBL_NBIT ; 
 int MANH_SIZE ; 
 long double FUNC0 (long double) ; 
 long double FUNC1 (long double) ; 
 long double* atanhi ; 
 long double* atanlo ; 
 long double FUNC2 (long double) ; 
 double huge ; 
 double one ; 

long double
FUNC3(long double x)
{
	union IEEEl2bits u;
	long double w,s1,s2,z;
	int id;
	int16_t expsign, expt;
	int32_t expman;

	u.e = x;
	expsign = u.xbits.expsign;
	expt = expsign & 0x7fff;
	if(expt >= ATAN_CONST) {	/* if |x| is large, atan(x)~=pi/2 */
	    if(expt == BIAS + LDBL_MAX_EXP &&
	       ((u.bits.manh&~LDBL_NBIT)|u.bits.manl)!=0)
		return x+x;		/* NaN */
	    if(expsign>0) return  atanhi[3]+atanlo[3];
	    else     return -atanhi[3]-atanlo[3];
	}
	/* Extract the exponent and the first few bits of the mantissa. */
	/* XXX There should be a more convenient way to do this. */
	expman = (expt << 8) | ((u.bits.manh >> (MANH_SIZE - 9)) & 0xff);
	if (expman < ((BIAS - 2) << 8) + 0xc0) {	/* |x| < 0.4375 */
	    if (expt < ATAN_LINEAR) {	/* if |x| is small, atanl(x)~=x */
		if(huge+x>one) return x;	/* raise inexact */
	    }
	    id = -1;
	} else {
	x = FUNC2(x);
	if (expman < (BIAS << 8) + 0x30) {		/* |x| < 1.1875 */
	    if (expman < ((BIAS - 1) << 8) + 0x60) {	/* 7/16 <=|x|<11/16 */
		id = 0; x = (2.0*x-one)/(2.0+x);
	    } else {			/* 11/16<=|x|< 19/16 */
		id = 1; x  = (x-one)/(x+one);
	    }
	} else {
	    if (expman < ((BIAS + 1) << 8) + 0x38) {	/* |x| < 2.4375 */
		id = 2; x  = (x-1.5)/(one+1.5*x);
	    } else {			/* 2.4375 <= |x| < 2^ATAN_CONST */
		id = 3; x  = -1.0/x;
	    }
	}}
    /* end of argument reduction */
	z = x*x;
	w = z*z;
    /* break sum aT[i]z**(i+1) into odd and even poly */
	s1 = z*FUNC0(w);
	s2 = w*FUNC1(w);
	if (id<0) return x - x*(s1+s2);
	else {
	    z = atanhi[id] - ((x*(s1+s2) - atanlo[id]) - x);
	    return (expsign<0)? -z:z;
	}
}