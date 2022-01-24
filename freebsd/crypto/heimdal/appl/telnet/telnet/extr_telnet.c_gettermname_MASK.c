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
 scalar_t__ FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* name_unknown ; 
 scalar_t__ resettermname ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,int,int*) ; 
 int /*<<< orphan*/  termbuf ; 
 char** unknown ; 

__attribute__((used)) static char *
FUNC6()
{
	char *tname;
	static char **tnamep = 0;
	static char **next;
	int err;

	if (resettermname) {
		resettermname = 0;
		if (tnamep && tnamep != unknown)
			FUNC1(tnamep);
		if ((tname = (char *)FUNC0((unsigned char *)"TERM")) &&
				FUNC5(tname, 1, &err) == 0) {
			tnamep = FUNC2(termbuf, tname);
		} else {
			if (tname && ((int)FUNC3(tname) <= 40)) {
				unknown[0] = tname;
				FUNC4(tname);
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