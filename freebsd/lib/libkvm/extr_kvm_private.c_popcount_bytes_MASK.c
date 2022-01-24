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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static uint64_t
FUNC5(uint64_t *addr, uint32_t bit0, uint32_t bitN)
{
	uint32_t res = bitN - bit0;
	uint64_t count = 0;
	uint32_t bound;

	/* Align to 64-bit boundary on the left side if needed. */
	if ((bit0 % FUNC0(*addr)) != 0) {
		bound = FUNC1(bitN, FUNC4(bit0, FUNC0(*addr)));
		count += FUNC2(FUNC3(*addr, bit0, bound));
		res -= (bound - bit0);
		addr++;
	}

	while (res > 0) {
		bound = FUNC1(res, FUNC0(*addr));
		count += FUNC2(FUNC3(*addr, 0, bound));
		res -= bound;
		addr++;
	}

	return (count);
}