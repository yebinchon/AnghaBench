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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char**,size_t*,size_t*,int) ; 

char *
FUNC3(FILE *f, int *lineno, size_t *lenp)
{
	char *line;
	size_t len, size;
	int ch;

	line = NULL;
	if (FUNC2(&line, &size, &len, 0) != 0)
		return (NULL);
	for (;;) {
		ch = FUNC1(f);
		/* strip comment */
		if (ch == '#') {
			do {
				ch = FUNC1(f);
			} while (ch != EOF && ch != '\n');
		}
		/* eof */
		if (ch == EOF) {
			/* done */
			break;
		}
		/* eol */
		if (ch == '\n') {
			if (lineno != NULL)
				++*lineno;
			/* skip blank lines */
			if (len == 0)
				continue;
			/* continuation */
			if (line[len - 1] == '\\') {
				line[--len] = '\0';
				continue;
			}
			/* done */
			break;
		}
		/* anything else */
		if (FUNC2(&line, &size, &len, ch) != 0)
			goto fail;
	}
	if (len == 0)
		goto fail;
	if (lenp != NULL)
		*lenp = len;
	return (line);
fail:
	FUNC0(line);
	return (NULL);
}