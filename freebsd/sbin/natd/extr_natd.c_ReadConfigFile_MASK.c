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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char) ; 
 char* FUNC7 (char*,char) ; 

void FUNC8 (const char* fileName)
{
	FILE*	file;
	char	*buf;
	size_t	len;
	char	*ptr, *p;
	char*	option;

	file = FUNC5 (fileName, "r");
	if (!file)
		FUNC1(1, "cannot open config file %s", fileName);

	while ((buf = FUNC4(file, &len)) != NULL) {
		if (buf[len - 1] == '\n')
			buf[len - 1] = '\0';
		else
			FUNC2(1, "config file format error: "
				"last line should end with newline");

/*
 * Check for comments, strip off trailing spaces.
 */
		if ((ptr = FUNC7(buf, '#')))
			*ptr = '\0';
		for (ptr = buf; FUNC6(*ptr); ++ptr)
			continue;
		if (*ptr == '\0')
			continue;
		for (p = FUNC7(buf, '\0'); FUNC6(*--p);)
			continue;
		*++p = '\0';

/*
 * Extract option name.
 */
		option = ptr;
		while (*ptr && !FUNC6 (*ptr))
			++ptr;

		if (*ptr != '\0') {

			*ptr = '\0';
			++ptr;
		}
/*
 * Skip white space between name and parms.
 */
		while (*ptr && FUNC6 (*ptr))
			++ptr;

		FUNC0 (option, *ptr ? ptr : NULL);
	}

	FUNC3 (file);
}