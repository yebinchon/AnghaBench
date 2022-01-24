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
typedef  int uint32_t ;

/* Variables and functions */

__attribute__((used)) static uint32_t
FUNC0(uint32_t a, uint32_t b)
{
	/* for 32 bit values */
        const uint32_t cutoff = ((uint32_t) 1 << (32 - 1));

	if(a == b)
		return 0;
	if(a < b && b - a < cutoff) {
		return b-a;
	}
	if(a > b && a - b > cutoff) {
		return ((uint32_t)0xffffffff) - (a-b-1);
	}
	/* wrong case, b smaller than a */
	return 0;
}