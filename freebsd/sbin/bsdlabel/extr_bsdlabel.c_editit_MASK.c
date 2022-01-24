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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 char* DEFEDITOR ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EPROCLIM ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 () ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  tmpfil ; 
 int FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int
FUNC15(void)
{
	int pid, xpid;
	int locstat, omask;
	const char *ed;
	uid_t uid;
	gid_t gid;

	omask = FUNC8(FUNC9(SIGINT)|FUNC9(SIGQUIT)|FUNC9(SIGHUP));
	while ((pid = FUNC2()) < 0) {
		if (errno == EPROCLIM) {
			FUNC14("you have too many processes");
			return(0);
		}
		if (errno != EAGAIN) {
			FUNC13("fork");
			return(0);
		}
		FUNC11(1);
	}
	if (pid == 0) {
		FUNC10(omask);
		gid = FUNC4();
		if (FUNC6(gid, gid, gid) == -1)
			FUNC0(1, "setresgid");
		uid = FUNC5();
		if (FUNC7(uid, uid, uid) == -1)
			FUNC0(1, "setresuid");
		if ((ed = FUNC3("EDITOR")) == (char *)0)
			ed = DEFEDITOR;
		FUNC1(ed, ed, tmpfil, (char *)0);
		FUNC0(1, "%s", ed);
	}
	while ((xpid = FUNC12(&locstat)) >= 0)
		if (xpid == pid)
			break;
	FUNC10(omask);
	return(!locstat);
}