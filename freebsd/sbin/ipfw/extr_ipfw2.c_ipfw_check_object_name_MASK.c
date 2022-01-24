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
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char const*) ; 

int
FUNC3(const char *name)
{
	int c, i, l;

	/*
	 * Check that name is null-terminated and contains
	 * valid symbols only. Valid mask is:
	 * [a-zA-Z0-9\-_\.]{1,63}
	 */
	l = FUNC2(name);
	if (l == 0 || l >= 64)
		return (EINVAL);
	for (i = 0; i < l; i++) {
		c = name[i];
		if (FUNC0(c) || FUNC1(c) || c == '_' ||
		    c == '-' || c == '.')
			continue;
		return (EINVAL);
	}
	return (0);
}