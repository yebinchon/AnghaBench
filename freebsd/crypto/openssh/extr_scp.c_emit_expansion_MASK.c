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
 scalar_t__ FUNC0 (char*,char***,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(const char *pattern, int brace_start, int brace_end,
    int sel_start, int sel_end, char ***patternsp, size_t *npatternsp)
{
	char *cp;
	int o = 0, tail_len = FUNC4(pattern + brace_end + 1);

	if ((cp = FUNC2(brace_start + (sel_end - sel_start) +
	    tail_len + 1)) == NULL)
		return -1;

	/* Pattern before initial brace */
	if (brace_start > 0) {
		FUNC3(cp, pattern, brace_start);
		o = brace_start;
	}
	/* Current braced selection */
	if (sel_end - sel_start > 0) {
		FUNC3(cp + o, pattern + sel_start,
		    sel_end - sel_start);
		o += sel_end - sel_start;
	}
	/* Remainder of pattern after closing brace */
	if (tail_len > 0) {
		FUNC3(cp + o, pattern + brace_end + 1, tail_len);
		o += tail_len;
	}
	cp[o] = '\0';
	if (FUNC0(cp, patternsp, npatternsp) != 0) {
		FUNC1(cp);
		return -1;
	}
	return 0;
}