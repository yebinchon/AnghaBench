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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 char* FUNC5 (char*) ; 
 size_t FUNC6 (char*) ; 

size_t
FUNC7(FILE *fp, char **line)
{
	size_t rv;
	char *cp;

	cp = FUNC2(fp, &rv);
	if (cp == NULL) {
		*line = NULL;
		return (rv);
	}
	if (cp[rv - 1] == '\n') {
		cp[rv - 1] = '\0';
		*line = FUNC5(cp);
		if (*line == NULL)
			FUNC1(1, "cannot allocate memory");
		--rv;
	} else {
		*line = FUNC3(rv + 1);
		if (*line == NULL)
			FUNC1(1, "cannot allocate memory");
		FUNC4(*line, cp, rv);
		(*line)[rv] = '\0';
	}
	FUNC0(rv == FUNC6(*line));
	return (rv);
}