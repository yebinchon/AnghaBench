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
 int /*<<< orphan*/  FUNC0 (char const) ; 

__attribute__((used)) static int
FUNC1(const char *pattern, const char *name, int ignorecase)
{
	char c;

	while (1) {
		switch (c = *pattern++) {
		case '\0':
			return *name == '\0';

		case '*':
			while (*name != '\0') {
				if (FUNC1(pattern, name,
					ignorecase))
					return (1);
				++name;
			}
			return (0);
		default:
			if (c != *name) {
				if (!ignorecase ||
				    FUNC0(c) != FUNC0(*name))
					return (0);
			}
			++name;
		}
	}
	/* NOTREACHED */
}