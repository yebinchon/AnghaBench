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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  RBX_NOINTR ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(unsigned ticks)
{
	uint32_t t0, t1;

	if (FUNC0(RBX_NOINTR))
		return (0);
	t0 = 0;
	for (;;) {
		if (FUNC2(1))
			return (1);
		t1 = *(uint32_t *)FUNC1(0x46c);
		if (!t0)
			t0 = t1;
		if ((uint32_t)(t1 - t0) >= ticks)
			return (0);
	}
}