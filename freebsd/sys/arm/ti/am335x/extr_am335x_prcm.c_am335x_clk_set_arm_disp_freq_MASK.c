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
typedef  unsigned int uint32_t ;
struct ti_clock_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_WKUP_CM_CLKMODE_DPLL_DISP ; 
 int /*<<< orphan*/  CM_WKUP_CM_CLKSEL_DPLL_DISP ; 
 int /*<<< orphan*/  CM_WKUP_CM_IDLEST_DPLL_DISP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int DPLL_MAX_DIV ; 
 unsigned int DPLL_MAX_MUL ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct ti_clock_dev *clkdev, unsigned int freq)
{
	uint32_t sysclk;
	uint32_t mul, div;
	uint32_t i, j;
	unsigned int delta, min_delta;

	FUNC2(NULL, &sysclk);

	/* Bypass mode */
	FUNC4(CM_WKUP_CM_CLKMODE_DPLL_DISP, 0x4);

	/* Make sure it's in bypass mode */
	while (!(FUNC3(CM_WKUP_CM_IDLEST_DPLL_DISP)
	    & (1 << 8)))
		FUNC0(10);

	/* Dumb and non-optimal implementation */
	min_delta = freq;
	for (i = 1; i < DPLL_MAX_MUL; i++) {
		for (j = 1; j < DPLL_MAX_DIV; j++) {
			delta = FUNC1(freq - i*(sysclk/j));
			if (delta < min_delta) {
				mul = i;
				div = j;
				min_delta = delta;
			}
			if (min_delta == 0)
				break;
		}
	}

	FUNC4(CM_WKUP_CM_CLKSEL_DPLL_DISP, (mul << 8) | (div - 1));

	/* Locked mode */
	FUNC4(CM_WKUP_CM_CLKMODE_DPLL_DISP, 0x7);

	int timeout = 10000;
	while ((!(FUNC3(CM_WKUP_CM_IDLEST_DPLL_DISP)
	    & (1 << 0))) && timeout--)
		FUNC0(10);

	return(0);
}