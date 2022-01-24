#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
typedef  int pid_t ;
struct TYPE_3__ {scalar_t__ num; int /*<<< orphan*/ * list; } ;
typedef  TYPE_1__ arglist ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int do_cmd_pid ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  killchild ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ verbose_mode ; 
 int FUNC11 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(arglist *a)
{
	u_int i;
	int status;
	pid_t pid;

	if (a->num == 0)
		FUNC4("do_local_cmd: no arguments");

	if (verbose_mode) {
		FUNC7(stderr, "Executing:");
		for (i = 0; i < a->num; i++)
			FUNC5(stderr, " %s", a->list[i]);
		FUNC7(stderr, "\n");
	}
	if ((pid = FUNC6()) == -1)
		FUNC4("do_local_cmd: fork: %s", FUNC10(errno));

	if (pid == 0) {
		FUNC2(a->list[0], a->list);
		FUNC8(a->list[0]);
		FUNC3(1);
	}

	do_cmd_pid = pid;
	FUNC9(SIGTERM, killchild);
	FUNC9(SIGINT, killchild);
	FUNC9(SIGHUP, killchild);

	while (FUNC11(pid, &status, 0) == -1)
		if (errno != EINTR)
			FUNC4("do_local_cmd: waitpid: %s", FUNC10(errno));

	do_cmd_pid = -1;

	if (!FUNC1(status) || FUNC0(status) != 0)
		return (-1);

	return (0);
}