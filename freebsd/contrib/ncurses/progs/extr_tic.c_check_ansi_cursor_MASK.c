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
 int FALSE ; 
 int TRUE ; 
 char FUNC0 (char) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(char *list[4])
{
    int j, k;
    int want;
    size_t prefix = 0;
    size_t suffix;
    bool skip[4];
    bool repeated = FALSE;

    for (j = 0; j < 4; ++j) {
	skip[j] = FALSE;
	for (k = 0; k < j; ++k) {
	    if (j != k
		&& !FUNC5(list[j], list[k])) {
		char *value = FUNC1(list[k], TRUE, 0);
		FUNC2("repeated cursor control %s\n", value);
		repeated = TRUE;
	    }
	}
    }
    if (!repeated) {
	char *up = list[1];

	if (FUNC0(up[0]) == '\033') {
	    if (up[1] == '[') {
		prefix = 2;
	    } else {
		prefix = 1;
	    }
	} else if (FUNC0(up[0]) == FUNC0('\233')) {
	    prefix = 1;
	}
	if (prefix) {
	    suffix = prefix;
	    while (up[suffix] && FUNC3(FUNC0(up[suffix])))
		++suffix;
	}
	if (prefix && up[suffix] == 'A') {
	    skip[1] = TRUE;
	    if (!FUNC5(list[0], "\n"))
		skip[0] = TRUE;
	    if (!FUNC5(list[2], "\b"))
		skip[2] = TRUE;

	    for (j = 0; j < 4; ++j) {
		if (skip[j] || FUNC6(list[j]) == 1)
		    continue;
		if (FUNC4(list[j], up, prefix)) {
		    char *value = FUNC1(list[j], TRUE, 0);
		    FUNC2("inconsistent prefix for %s\n", value);
		    continue;
		}
		if (FUNC6(list[j]) < suffix) {
		    char *value = FUNC1(list[j], TRUE, 0);
		    FUNC2("inconsistent length for %s, expected %d\n",
				value, (int) suffix + 1);
		    continue;
		}
		want = "BADC"[j];
		if (list[j][suffix] != want) {
		    char *value = FUNC1(list[j], TRUE, 0);
		    FUNC2("inconsistent suffix for %s, expected %c, have %c\n",
				value, want, list[j][suffix]);
		}
	    }
	}
    }
}