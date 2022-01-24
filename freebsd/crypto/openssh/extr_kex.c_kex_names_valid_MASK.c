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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char**,char*) ; 

int
FUNC7(const char *names)
{
	char *s, *cp, *p;

	if (names == NULL || FUNC4(names, "") == 0)
		return 0;
	if ((s = cp = FUNC5(names)) == NULL)
		return 0;
	for ((p = FUNC6(&cp, ",")); p && *p != '\0';
	    (p = FUNC6(&cp, ","))) {
		if (FUNC3(p) == NULL) {
			FUNC1("Unsupported KEX algorithm \"%.100s\"", p);
			FUNC2(s);
			return 0;
		}
	}
	FUNC0("kex names ok: [%s]", names);
	FUNC2(s);
	return 1;
}