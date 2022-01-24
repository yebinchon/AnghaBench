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
 int /*<<< orphan*/  MAC_SEP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char**,int /*<<< orphan*/ ) ; 

int
FUNC5(const char *names)
{
	char *maclist, *cp, *p;

	if (names == NULL || FUNC2(names, "") == 0)
		return 0;
	if ((maclist = cp = FUNC3(names)) == NULL)
		return 0;
	for ((p = FUNC4(&cp, MAC_SEP)); p && *p != '\0';
	    (p = FUNC4(&cp, MAC_SEP))) {
		if (FUNC1(NULL, p) < 0) {
			FUNC0(maclist);
			return 0;
		}
	}
	FUNC0(maclist);
	return 1;
}