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
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 char* _PATH_SSH_PKCS11_HELPER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int fd ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int pid ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(void)
{
	int pair[2];

	if (FUNC7(AF_UNIX, SOCK_STREAM, 0, pair) == -1) {
		FUNC3("socketpair: %s", FUNC8(errno));
		return (-1);
	}
	if ((pid = FUNC5()) == -1) {
		FUNC3("fork: %s", FUNC8(errno));
		return (-1);
	} else if (pid == 0) {
		if ((FUNC2(pair[1], STDIN_FILENO) == -1) ||
		    (FUNC2(pair[1], STDOUT_FILENO) == -1)) {
			FUNC6(stderr, "dup2: %s\n", FUNC8(errno));
			FUNC0(1);
		}
		FUNC1(pair[0]);
		FUNC1(pair[1]);
		FUNC4(_PATH_SSH_PKCS11_HELPER, _PATH_SSH_PKCS11_HELPER,
		    (char *)NULL);
		FUNC6(stderr, "exec: %s: %s\n", _PATH_SSH_PKCS11_HELPER,
		    FUNC8(errno));
		FUNC0(1);
	}
	FUNC1(pair[1]);
	fd = pair[0];
	return (0);
}