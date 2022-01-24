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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 

__attribute__((used)) static int
FUNC3(const char *s, const char *eos)
{
	/* scheme = ALPHA *( ALPHA / DIGIT / "+" / "-" / "." ) */
	FUNC0(eos >= s);
	if (s == eos)
		return 0;
	if (!FUNC2(*s))
		return 0;
	while (++s < eos) {
		if (! FUNC1(*s) &&
		    *s != '+' && *s != '-' && *s != '.')
			return 0;
	}
	return 1;
}