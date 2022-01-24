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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  SUBDELIMS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const) ; 

__attribute__((used)) static int
FUNC3(const char *s, const char *eos)
{
	while (s && s<eos) {
		if (FUNC0(*s) ||
		    FUNC2(SUBDELIMS, *s))
			++s;
		else if (*s == '%' &&
		    FUNC1(s[1]) &&
		    FUNC1(s[2]))
			s += 3;
		else
			return 0;
	}
	return 1;
}