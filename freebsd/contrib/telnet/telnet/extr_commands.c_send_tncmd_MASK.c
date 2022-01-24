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
 scalar_t__ FUNC0 (char**) ; 
 int /*<<< orphan*/  connected ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 scalar_t__ FUNC2 (char*,char**,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (char*) ; 
 void FUNC6 (int,int) ; 

__attribute__((used)) static int
FUNC7(void (*func)(int, int), const char *cmd, char *name)
{
    char **cpp;
    extern char *telopts[];
    int val = 0;

    if (FUNC3(name, "help") || FUNC3(name, "?")) {
	int col, len;

	FUNC4("usage: send %s <value|option>\n", cmd);
	FUNC4("\"value\" must be from 0 to 255\n");
	FUNC4("Valid options are:\n\t");

	col = 8;
	for (cpp = telopts; *cpp; cpp++) {
	    len = FUNC5(*cpp) + 3;
	    if (col + len > 65) {
		FUNC4("\n\t");
		col = 8;
	    }
	    FUNC4(" \"%s\"", *cpp);
	    col += len;
	}
	FUNC4("\n");
	return 0;
    }
    cpp = (char **)FUNC2(name, telopts, sizeof(char *));
    if (FUNC0(cpp)) {
	FUNC1(stderr,"'%s': ambiguous argument ('send %s ?' for help).\n",
					name, cmd);
	return 0;
    }
    if (cpp) {
	val = cpp - telopts;
    } else {
	char *cp = name;

	while (*cp >= '0' && *cp <= '9') {
	    val *= 10;
	    val += *cp - '0';
	    cp++;
	}
	if (*cp != 0) {
	    FUNC1(stderr, "'%s': unknown argument ('send %s ?' for help).\n",
					name, cmd);
	    return 0;
	} else if (val < 0 || val > 255) {
	    FUNC1(stderr, "'%s': bad value ('send %s ?' for help).\n",
					name, cmd);
	    return 0;
	}
    }
    if (!connected) {
	FUNC4("?Need to be connected first.\n");
	return 0;
    }
    (*func)(val, 1);
    return 1;
}