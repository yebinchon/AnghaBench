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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 char** FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* name_unknown ; 
 scalar_t__ resettermname ; 
 scalar_t__ FUNC3 (char*,int,int*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  termbuf ; 
 char const** unknown ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static const char *
FUNC6(void)
{
	char *tname;
	static const char **tnamep = 0;
	static const char **next;
	int err;

	if (resettermname) {
		resettermname = 0;
		if (tnamep && tnamep != unknown)
			FUNC1(tnamep);
		if ((tname = FUNC0("TERM")) &&
				(FUNC3(tname, 1, &err) == 0)) {
			tnamep = FUNC2(termbuf, tname);
		} else {
			if (tname && (FUNC4(tname) <= 40)) {
				unknown[0] = tname;
				FUNC5(tname);
			} else
				unknown[0] = name_unknown;
			tnamep = unknown;
		}
		next = tnamep;
	}
	if (*next == 0)
		next = tnamep;
	return(*next++);
}