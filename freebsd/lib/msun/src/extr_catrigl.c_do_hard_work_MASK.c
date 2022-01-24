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

/* Variables and functions */
 long double A_crossover ; 
 long double B_crossover ; 
 long double FOUR_SQRT_MIN ; 
 int LDBL_EPSILON ; 
 long double FUNC0 (long double,long double,long double) ; 
 int FUNC1 (long double) ; 
 long double FUNC2 (long double,long double) ; 
 long double FUNC3 (long double) ; 
 long double FUNC4 (long double) ; 
 long double FUNC5 (int) ; 

__attribute__((used)) static inline void
FUNC6(long double x, long double y, long double *rx, int *B_is_usable,
    long double *B, long double *sqrt_A2my2, long double *new_y)
{
	long double R, S, A;
	long double Am1, Amy;

	R = FUNC2(x, y + 1);
	S = FUNC2(x, y - 1);

	A = (R + S) / 2;
	if (A < 1)
		A = 1;

	if (A < A_crossover) {
		if (y == 1 && x < LDBL_EPSILON * LDBL_EPSILON / 128) {
			*rx = FUNC5(x);
		} else if (x >= LDBL_EPSILON * FUNC1(y - 1)) {
			Am1 = FUNC0(x, 1 + y, R) + FUNC0(x, 1 - y, S);
			*rx = FUNC3(Am1 + FUNC5(Am1 * (A + 1)));
		} else if (y < 1) {
			*rx = x / FUNC5((1 - y) * (1 + y));
		} else {
			*rx = FUNC3((y - 1) + FUNC5((y - 1) * (y + 1)));
		}
	} else {
		*rx = FUNC4(A + FUNC5(A * A - 1));
	}

	*new_y = y;

	if (y < FOUR_SQRT_MIN) {
		*B_is_usable = 0;
		*sqrt_A2my2 = A * (2 / LDBL_EPSILON);
		*new_y = y * (2 / LDBL_EPSILON);
		return;
	}

	*B = y / A;
	*B_is_usable = 1;

	if (*B > B_crossover) {
		*B_is_usable = 0;
		if (y == 1 && x < LDBL_EPSILON / 128) {
			*sqrt_A2my2 = FUNC5(x) * FUNC5((A + y) / 2);
		} else if (x >= LDBL_EPSILON * FUNC1(y - 1)) {
			Amy = FUNC0(x, y + 1, R) + FUNC0(x, y - 1, S);
			*sqrt_A2my2 = FUNC5(Amy * (A + y));
		} else if (y > 1) {
			*sqrt_A2my2 = x * (4 / LDBL_EPSILON / LDBL_EPSILON) * y /
			    FUNC5((y + 1) * (y - 1));
			*new_y = y * (4 / LDBL_EPSILON / LDBL_EPSILON);
		} else {
			*sqrt_A2my2 = FUNC5((1 - y) * (1 + y));
		}
	}
}