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
 int /*<<< orphan*/  AUDIT_CONTROL_FILE ; 
 int /*<<< orphan*/  AU_LINE_MAX ; 
 int /*<<< orphan*/  delim ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * fp ; 
 char* linestr ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int
FUNC6(const char *name, char **str)
{
	char *type, *nl;
	char *tokptr;
	char *last;

	*str = NULL;

	if ((fp == NULL) && ((fp = FUNC2(AUDIT_CONTROL_FILE, "r")) == NULL))
		return (-1); /* Error */

	while (1) {
		if (FUNC1(linestr, AU_LINE_MAX, fp) == NULL) {
			if (FUNC0(fp))
				return (-1);
			return (0);	/* EOF */
		}

		if (linestr[0] == '#')
			continue;

		/* Remove trailing new line character and white space. */
		nl = FUNC3(linestr, '\0') - 1;
		while (nl >= linestr && ('\n' == *nl || ' ' == *nl ||
			'\t' == *nl)) {
			*nl = '\0';
			nl--;
		}

		tokptr = linestr;
		if ((type = FUNC5(tokptr, delim, &last)) != NULL) {
			if (FUNC4(name, type) == 0) {
				/* Found matching name. */
				*str = last;
				return (0); /* Success */
			}
		}
	}
}