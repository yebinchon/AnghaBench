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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char const*) ; 

int
FUNC5(const char *file, int line,
    const char *pathname, const char *strings[])
{
	char *buff;
	int i;

	buff = FUNC3(NULL, "%s", pathname);
	if (buff == NULL) {
		FUNC1(file, line, "Can't read file: %s", pathname);
		FUNC0(NULL);
		return (0);
	}

	for (i = 0; strings[i] != NULL; ++i) {
		if (FUNC4(buff, strings[i]) != NULL) {
			FUNC1(file, line, "Invalid string in %s: %s", pathname,
			    strings[i]);
			FUNC0(NULL);
			FUNC2(buff);
			return(0);
		}
	}

	FUNC2(buff);
	return (0);
}