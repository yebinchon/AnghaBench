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
 float A_crossover ; 
 float B_crossover ; 
 int FLT_EPSILON ; 
 float FOUR_SQRT_MIN ; 
 float FUNC0 (float,float,float) ; 
 int FUNC1 (float) ; 
 float FUNC2 (float,float) ; 
 float FUNC3 (float) ; 
 float FUNC4 (float) ; 
 float FUNC5 (int) ; 

__attribute__((used)) static inline void
FUNC6(float x, float y, float *rx, int *B_is_usable, float *B,
    float *sqrt_A2my2, float *new_y)
{
	float R, S, A;
	float Am1, Amy;

	R = FUNC2(x, y + 1);
	S = FUNC2(x, y - 1);

	A = (R + S) / 2;
	if (A < 1)
		A = 1;

	if (A < A_crossover) {
		if (y == 1 && x < FLT_EPSILON * FLT_EPSILON / 128) {
			*rx = FUNC5(x);
		} else if (x >= FLT_EPSILON * FUNC1(y - 1)) {
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
		*sqrt_A2my2 = A * (2 / FLT_EPSILON);
		*new_y = y * (2 / FLT_EPSILON);
		return;
	}

	*B = y / A;
	*B_is_usable = 1;

	if (*B > B_crossover) {
		*B_is_usable = 0;
		if (y == 1 && x < FLT_EPSILON / 128) {
			*sqrt_A2my2 = FUNC5(x) * FUNC5((A + y) / 2);
		} else if (x >= FLT_EPSILON * FUNC1(y - 1)) {
			Amy = FUNC0(x, y + 1, R) + FUNC0(x, y - 1, S);
			*sqrt_A2my2 = FUNC5(Amy * (A + y));
		} else if (y > 1) {
			*sqrt_A2my2 = x * (4 / FLT_EPSILON / FLT_EPSILON) * y /
			    FUNC5((y + 1) * (y - 1));
			*new_y = y * (4 / FLT_EPSILON / FLT_EPSILON);
		} else {
			*sqrt_A2my2 = FUNC5((1 - y) * (1 + y));
		}
	}
}