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
 int /*<<< orphan*/  FUNC0 (int,double) ; 
 int FUNC1 (double,double*) ; 
 int /*<<< orphan*/  FUNC2 (double,double,int,double*,double*) ; 

void
FUNC3(double x, double *sn, double *cs)
{
	double y[2];
	int32_t n, ix;

	/* High word of x. */
	FUNC0(ix, x);

	/* |x| ~< pi/4 */
	ix &= 0x7fffffff;
	if (ix <= 0x3fe921fb) {
		if (ix < 0x3e400000) {		/* |x| < 2**-27 */
			if ((int)x == 0) {	/* Generate inexact. */
				*sn = x;
				*cs = 1;
				return;
			}
		}
		FUNC2(x, 0, 0, sn, cs);
		return;
	}

	/* If x = Inf or NaN, then sin(x) = NaN and cos(x) = NaN. */
	if (ix >= 0x7ff00000) {
		*sn = x - x;
		*cs = x - x;
		return;
	}

	/* Argument reduction. */
	n = FUNC1(x, y);

	switch(n & 3) {
	case 0:
		FUNC2(y[0], y[1], 1, sn, cs);
		break;
	case 1:
		FUNC2(y[0], y[1], 1, cs, sn);
		*cs = -*cs;
		break;
	case 2:
		FUNC2(y[0], y[1], 1, sn, cs);
		*sn = -*sn;
		*cs = -*cs;
		break;
	default:
		FUNC2(y[0], y[1], 1, cs, sn);
		*sn = -*sn;
	}
}