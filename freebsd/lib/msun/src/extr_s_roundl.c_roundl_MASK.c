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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,long double) ; 
 int /*<<< orphan*/  FUNC2 (long double) ; 
 long double FUNC3 (long double) ; 

long double
FUNC4(long double x)
{
	long double t;
	uint16_t hx;

	FUNC1(hx, x);
	if ((hx & 0x7fff) == 0x7fff)
		return (x + x);

	FUNC0();

	if (!(hx & 0x8000)) {
		t = FUNC3(x);
		if (t - x <= -0.5L)
			t += 1;
		FUNC2(t);
	} else {
		t = FUNC3(-x);
		if (t + x <= -0.5L)
			t += 1;
		FUNC2(-t);
	}
}