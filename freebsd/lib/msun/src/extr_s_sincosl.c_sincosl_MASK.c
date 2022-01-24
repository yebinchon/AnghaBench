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
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (long double,long double*) ; 
 int /*<<< orphan*/  FUNC3 (long double,long double,int,long double*,long double*) ; 

void
FUNC4(long double x, long double *sn, long double *cs)
{
	union IEEEl2bits z;
	int e0, sgn;
	long double y[2];

	z.e = x;
	sgn = z.bits.sign;
	z.bits.sign = 0;

	FUNC0();

	/* Optimize the case where x is already within range. */
	if (z.e < M_PI_4) {
		/*
		 * If x = +-0 or x is a subnormal number, then sin(x) = x and
		 * cos(x) = 1.
		 */
		if (z.bits.exp == 0) {
			*sn = x;
			*cs = 1;
		} else
			FUNC3(x, 0, 0, sn, cs);
		FUNC1();
	}

	/* If x = NaN or Inf, then sin(x) and cos(x) are NaN. */
	if (z.bits.exp == 32767) {
		*sn = x - x;
		*cs = x - x;
		FUNC1();
	}

	/* Range reduction. */
	e0 = FUNC2(x, y);

	switch (e0 & 3) {
	case 0:
		FUNC3(y[0], y[1], 1, sn, cs);
		break;
	case 1:
		FUNC3(y[0], y[1], 1, cs, sn);
		*cs = -*cs;
		break;
	case 2:
		FUNC3(y[0], y[1], 1, sn, cs);
		*sn = -*sn;
		*cs = -*cs;
		break;
	default:
		FUNC3(y[0], y[1], 1, cs, sn);
		*sn = -*sn;
	}

	FUNC1();
}