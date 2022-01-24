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
 scalar_t__ ENOENT ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 char const* SYSCTL_SCRIPTS ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (char**,char*) ; 
 int FUNC7 (char const*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(const char *scriptname)
{
	char *buffer, *line, *nextline;
	char *line_script, *line_scriptname;
	size_t buflen, len;
	int ret;

repeat:
	if (FUNC7(SYSCTL_SCRIPTS, NULL, &buflen, NULL, 0) < 0)
		FUNC1(EX_OSERR, "sysctl: %s", SYSCTL_SCRIPTS);
	if (buflen == 0)
		return;
	buffer = FUNC3(buflen);
	if (buffer == NULL)
		FUNC1(EX_OSERR, "malloc");
	FUNC0(buffer, buflen);
	len = buflen;
	ret = FUNC7(SYSCTL_SCRIPTS, buffer, &len, NULL, 0);
	if (ret < 0 && errno != ENOMEM)
		FUNC1(EX_OSERR, "sysctl: %s", SYSCTL_SCRIPTS);
	if (ret < 0) {
		FUNC2(buffer);
		goto repeat;
	}

	/*
	 * We nul'd the buffer before calling sysctl(), so at worst empty.
	 *
	 * If a specific script hasn't been requested, print it all.
	 */
	if (scriptname == NULL) {
		FUNC4("%s", buffer);
		FUNC2(buffer);
		return;
	}

	/*
	 * If a specific script has been requested, we have to parse the
	 * string to find it.
	 */
	nextline = buffer;
	while ((line = FUNC6(&nextline, "\n")) != NULL) {
		line_script = line;
		line_scriptname = FUNC6(&line_script, "=");
		if (line_script == NULL)
			continue;
		if (FUNC5(scriptname, line_scriptname) != 0)
			continue;
		FUNC4("%s\n", line_script);
		break;
	}
	if (line == NULL) {
		errno = ENOENT;
		FUNC1(EX_DATAERR, "%s", scriptname);
	}
	FUNC2(buffer);
}