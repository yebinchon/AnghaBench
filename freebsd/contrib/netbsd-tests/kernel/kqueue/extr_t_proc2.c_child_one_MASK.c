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
struct passwd {int /*<<< orphan*/  pw_uid; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 () ; 
 struct passwd* FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	pid_t pid;
	struct passwd *pwd;
	const char *nam = "nobody";

	pwd = FUNC4(nam);
	if (pwd == NULL)
		FUNC2(EXIT_FAILURE, "getpwnam(\"%s\")", nam);

	if ((FUNC5(pwd->pw_uid)) == -1)
		FUNC2(EXIT_FAILURE, "setuid(%d)", pwd->pw_uid);

	pid = FUNC3();
	if (pid == -1)
		FUNC2(EXIT_FAILURE, "fork()");

	if (pid == 0)
		FUNC1();

	FUNC0(EXIT_SUCCESS);
}