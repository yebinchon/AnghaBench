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
 int* map ; 

int
FUNC0(void)
{
	int x;

        /* Assume that the x87 and the SSE unit agree on the rounding mode. */
	__asm("fnstcw %0" : "=m" (x));
        return (map[(x >> 10) & 0x03]);
}