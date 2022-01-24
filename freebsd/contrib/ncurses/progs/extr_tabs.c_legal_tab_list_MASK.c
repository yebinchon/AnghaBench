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
 int FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 char* prg_name ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bool
FUNC4(const char *tab_list)
{
    bool result = TRUE;

    if (tab_list != 0 && *tab_list != '\0') {
	if (FUNC1(tab_list)) {
	    int n, ch;
	    for (n = 0; tab_list[n] != '\0'; ++n) {
		ch = FUNC0(tab_list[n]);
		if (!(FUNC3(ch) || ch == ',' || ch == '+')) {
		    FUNC2(stderr,
			    "%s: unexpected character found '%c'\n",
			    prg_name, ch);
		    result = FALSE;
		    break;
		}
	    }
	} else {
	    FUNC2(stderr, "%s: trailing comma found '%s'\n", prg_name, tab_list);
	    result = FALSE;
	}
    } else {
	FUNC2(stderr, "%s: no tab-list given\n", prg_name);
	result = FALSE;
    }
    return result;
}