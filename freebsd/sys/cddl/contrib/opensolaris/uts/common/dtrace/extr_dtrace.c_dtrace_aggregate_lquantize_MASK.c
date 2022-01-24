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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(uint64_t *lquanta, uint64_t nval, uint64_t incr)
{
	uint64_t arg = *lquanta++;
	int32_t base = FUNC1(arg);
	uint16_t step = FUNC3(arg);
	uint16_t levels = FUNC2(arg);
	int32_t val = (int32_t)nval, level;

	FUNC0(step != 0);
	FUNC0(levels != 0);

	if (val < base) {
		/*
		 * This is an underflow.
		 */
		lquanta[0] += incr;
		return;
	}

	level = (val - base) / step;

	if (level < levels) {
		lquanta[level + 1] += incr;
		return;
	}

	/*
	 * This is an overflow.
	 */
	lquanta[levels + 1] += incr;
}