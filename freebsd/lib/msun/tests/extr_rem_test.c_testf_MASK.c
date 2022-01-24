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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 () ; 
 float FUNC4 (float,float) ; 
 float FUNC5 (float,float,int*) ; 
 int /*<<< orphan*/  FUNC6 (float) ; 

__attribute__((used)) static void
FUNC7(float x, float y, float expected_rem, int expected_quo)
{
	int q;
	float rem;

	q = FUNC3();
	rem = FUNC4(x, y);
	FUNC1(rem == expected_rem);
	FUNC1(!FUNC6(rem) == !FUNC6(expected_rem));
	rem = FUNC5(x, y, &q);
	FUNC1(rem == expected_rem);
	FUNC1(!FUNC6(rem) == !FUNC6(expected_rem));
	FUNC1((q ^ expected_quo) >= 0); /* sign(q) == sign(expected_quo) */
	FUNC1((q & 0x7) == (expected_quo & 0x7));
	if (q != 0) {
		FUNC1((q > 0) ^ !(expected_quo > 0));
		q = FUNC0(q);
		FUNC1((q & FUNC2(q)) == (FUNC0(expected_quo) & FUNC2(q)));
	}
}