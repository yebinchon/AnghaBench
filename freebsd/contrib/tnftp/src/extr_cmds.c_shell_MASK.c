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
typedef  int /*<<< orphan*/  sigfunc ;
typedef  int /*<<< orphan*/  shellnam ;
typedef  int pid_t ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  altarg ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int code ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ ftp_debug ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 char* FUNC9 (char const*,char) ; 
 int /*<<< orphan*/  ttyout ; 
 int FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC13(int argc, char *argv[])
{
	pid_t pid;
	sigfunc oldintr;
	char shellnam[MAXPATHLEN];
	const char *shellp, *namep;
	int wait_status;

	if (argc == 0) {
		FUNC0("usage: %s [command [args]]\n", argv[0]);
		code = -1;
		return;
	}
	oldintr = FUNC12(SIGINT, SIG_IGN);
	if ((pid = FUNC4()) == 0) {
		(void)FUNC1(3);
		(void)FUNC12(SIGINT, SIG_DFL);
		shellp = FUNC6("SHELL");
		if (shellp == NULL)
			shellp = _PATH_BSHELL;
		namep = FUNC9(shellp, '/');
		if (namep == NULL)
			namep = shellp;
		else
			namep++;
		(void)FUNC8(shellnam, namep, sizeof(shellnam));
		if (ftp_debug) {
			FUNC5(shellp, ttyout);
			FUNC7('\n', ttyout);
		}
		if (argc > 1) {
			FUNC2(shellp, shellnam, "-c", altarg, (char *)0);
		}
		else {
			FUNC2(shellp, shellnam, (char *)0);
		}
		FUNC11("Can't execute `%s'", shellp);
		code = -1;
		FUNC3(1);
	}
	if (pid > 0)
		while (FUNC10(&wait_status) != pid)
			;
	(void)FUNC12(SIGINT, oldintr);
	if (pid == -1) {
		FUNC11("Can't fork a subshell; try again later");
		code = -1;
	} else
		code = 0;
}