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
typedef  int /*<<< orphan*/  emsg ;
typedef  int /*<<< orphan*/  code ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  TS_CLOSED ; 
 int FUNC0 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  rmtstate ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(const char *cmd)
{
	char *cp;
	char code[30], emsg[BUFSIZ];

	FUNC3(code, sizeof (code));
	if (*code == 'E' || *code == 'F') {
		FUNC3(emsg, sizeof (emsg));
		FUNC1("%s: %s", cmd, emsg);
		errno = FUNC0(code + 1);
		if (*code == 'F')
			rmtstate = TS_CLOSED;
		return (-1);
	}
	if (*code != 'A') {
		/* Kill trailing newline */
		cp = code + FUNC4(code);
		if (cp > code && *--cp == '\n')
			*cp = '\0';

		FUNC1("Protocol to remote tape server botched (code \"%s\").\n",
		    code);
		FUNC2(0);
	}
	return (FUNC0(code + 1));
}