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
 int BITS_PER_LONG ; 
 int FUNC0 (unsigned long) ; 

__attribute__((used)) static inline uint32_t FUNC1(const unsigned long *addr,
					 uint32_t size)
{
	const unsigned long *p = addr;
	uint32_t result = 0;
	unsigned long tmp;

	while (size & ~(BITS_PER_LONG - 1)) {
		tmp = *(p++);
		if (~tmp)
			goto found;
		result += BITS_PER_LONG;
		size -= BITS_PER_LONG;
	}
	if (!size)
		return result;

	tmp = (*p) | (~0UL << size);
	if (tmp == (uint32_t)~0UL)	/* Are any bits zero? */
		return result + size;	/* Nope. */
found:
	return result + FUNC0(tmp);
}