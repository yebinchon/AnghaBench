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
typedef  int u_int ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char***,int*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (char*,char) ; 
 size_t FUNC9 (char*,char*) ; 

__attribute__((used)) static void
FUNC10(char ***env, u_int *envsize,
	const char *filename, const char *whitelist)
{
	FILE *f;
	char *line = NULL, *cp, *value;
	size_t linesize = 0;
	u_int lineno = 0;

	f = FUNC3(filename, "r");
	if (!f)
		return;

	while (FUNC6(&line, &linesize, f) != -1) {
		if (++lineno > 1000)
			FUNC1("Too many lines in environment file %s", filename);
		for (cp = line; *cp == ' ' || *cp == '\t'; cp++)
			;
		if (!*cp || *cp == '#' || *cp == '\n')
			continue;

		cp[FUNC9(cp, "\n")] = '\0';

		value = FUNC8(cp, '=');
		if (value == NULL) {
			FUNC4(stderr, "Bad line %u in %.100s\n", lineno,
			    filename);
			continue;
		}
		/*
		 * Replace the equals sign by nul, and advance value to
		 * the value string.
		 */
		*value = '\0';
		value++;
		if (whitelist != NULL &&
		    FUNC7(cp, whitelist, 0) != 1)
			continue;
		FUNC0(env, envsize, cp, value);
	}
	FUNC5(line);
	FUNC2(f);
}