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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXPORTS_LINE_SIZE ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int exports_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(void)
{
	char buf[EXPORTS_LINE_SIZE], *line;
	unsigned lineno = 0, objs = 0, len;
	FILE *fd;

	FUNC0();

	fd = FUNC4(exports_file, "r");
	if (fd == NULL) {
		FUNC6("Cannot open exports file (%s): %s.", exports_file,
		    FUNC8(errno));
	}

	FUNC5(LOG_INFO, "Reading exports file (%s).", exports_file);

	for (;;) {
		if (FUNC3(buf, sizeof(buf), fd) == NULL) {
			if (FUNC2(fd))
				break;

			FUNC6("Error while reading exports file: %s.",
			    FUNC8(errno));
		}

		/* Increase line count. */
		lineno++;

		/* Skip spaces and tabs. */
		for (line = buf; *line == ' ' || *line == '\t'; ++line)
			;

		/* Empty line, comment or empty line at the end of file. */
		if (*line == '\n' || *line == '#' || *line == '\0')
			continue;

		len = FUNC9(line);
		if (line[len - 1] == '\n') {
			/* Remove new line char. */
			line[len - 1] = '\0';
		} else {
			if (!FUNC2(fd))
				FUNC6("Line %u too long.", lineno);
		}

		FUNC7(line, lineno);
		objs++;
	}

	FUNC1(fd);

	if (objs == 0)
		FUNC6("There are no objects to export.");

	FUNC5(LOG_INFO, "Exporting %u object(s).", objs);
}