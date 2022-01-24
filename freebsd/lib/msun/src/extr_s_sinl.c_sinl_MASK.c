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
struct TYPE_2__ {int sign; int exp; } ;
union IEEEl2bits {long double e; TYPE_1__ bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 long double M_PI_4 ; 
 int /*<<< orphan*/  FUNC1 (long double) ; 
 int FUNC2 (long double,long double*) ; 
 long double FUNC3 (long double,long double) ; 
 long double FUNC4 (long double,long double,int) ; 

long double
FUNC5(long double x)
{
	union IEEEl2bits z;
	int e0, s;
	long double y[2];
	long double hi, lo;

	z.e = x;
	s = z.bits.sign;
	z.bits.sign = 0;

	/* If x = +-0 or x is a subnormal number, then sin(x) = x */
	if (z.bits.exp == 0)
		return (x);

	/* If x = NaN or Inf, then sin(x) = NaN. */
	if (z.bits.exp == 32767)
		return ((x - x) / (x - x));

	FUNC0();

	/* Optimize the case where x is already within range. */
	if (z.e < M_PI_4) {
		hi = FUNC4(z.e, 0, 0);
		FUNC1(s ? -hi : hi);
	}

	e0 = FUNC2(x, y);
	hi = y[0];
	lo = y[1];

	switch (e0 & 3) {
	case 0:
	    hi = FUNC4(hi, lo, 1);
	    break;
	case 1:
	    hi = FUNC3(hi, lo);
	    break;
	case 2:
	    hi = - FUNC4(hi, lo, 1);
	    break;
	case 3:
	    hi = - FUNC3(hi, lo);
	    break;
	}
	
	FUNC1(hi);
}