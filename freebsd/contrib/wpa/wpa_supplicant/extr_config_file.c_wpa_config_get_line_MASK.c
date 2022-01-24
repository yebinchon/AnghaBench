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
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char * FUNC7(char *s, int size, FILE *stream, int *line,
				  char **_pos)
{
	char *pos, *end, *sstart;

	while (FUNC0(s, size, stream)) {
		(*line)++;
		s[size - 1] = '\0';
		if (!FUNC1(s, size)) {
			/*
			 * The line was truncated - skip rest of it to avoid
			 * confusing error messages.
			 */
			FUNC6(MSG_INFO, "Long line in configuration file "
				   "truncated");
			FUNC5(stream);
		}
		pos = s;

		/* Skip white space from the beginning of line. */
		while (*pos == ' ' || *pos == '\t' || *pos == '\r')
			pos++;

		/* Skip comment lines and empty lines */
		if (*pos == '#' || *pos == '\n' || *pos == '\0')
			continue;

		/*
		 * Remove # comments unless they are within a double quoted
		 * string.
		 */
		sstart = FUNC2(pos, '"');
		if (sstart)
			sstart = FUNC4(sstart + 1, '"');
		if (!sstart)
			sstart = pos;
		end = FUNC2(sstart, '#');
		if (end)
			*end-- = '\0';
		else
			end = pos + FUNC3(pos) - 1;

		/* Remove trailing white space. */
		while (end > pos &&
		       (*end == '\n' || *end == ' ' || *end == '\t' ||
			*end == '\r'))
			*end-- = '\0';

		if (*pos == '\0')
			continue;

		if (_pos)
			*_pos = pos;
		return pos;
	}

	if (_pos)
		*_pos = NULL;
	return NULL;
}