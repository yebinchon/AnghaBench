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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,unsigned long*) ; 

__attribute__((used)) static uint32_t FUNC2(unsigned long *bitmap,
				   uint32_t start, uint32_t nbits,
				   int len, int alignment)
{
	uint32_t end, i;

again:
	start = FUNC0(start, alignment);

	while ((start < nbits) && FUNC1(start, bitmap))
		start += alignment;

	if (start >= nbits)
		return -1;

	end = start + len;
	if (end > nbits)
		return -1;

	for (i = start + 1; i < end; i++) {
		if (FUNC1(i, bitmap)) {
			start = i + 1;
			goto again;
		}
	}

	return start;
}