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
 int FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(const char * __restrict str1,
    const char * __restrict str2)
{
	int c1, c2;

	c1 = c2 = 1;

	while (c1 && c2 && c1 == c2) {
		c1 = FUNC0(*str1++);
		c2 = FUNC0(*str2++);
	}

	return ((c1 == c2) ? 0 : ((c1 > c2) ? 1 : -1));
}