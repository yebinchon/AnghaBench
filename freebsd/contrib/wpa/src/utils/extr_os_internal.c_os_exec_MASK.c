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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC9(const char *program, const char *arg, int wait_completion)
{
	pid_t pid;
	int pid_status;

	pid = FUNC2();
	if (pid < 0) {
		FUNC8(MSG_ERROR, "fork: %s", FUNC6(errno));
		return -1;
	}

	if (pid == 0) {
		/* run the external command in the child process */
		const int MAX_ARG = 30;
		char *_program, *_arg, *pos;
		char *argv[MAX_ARG + 1];
		int i;

		_program = FUNC5(program);
		_arg = FUNC5(arg);

		argv[0] = _program;

		i = 1;
		pos = _arg;
		while (i < MAX_ARG && pos && *pos) {
			while (*pos == ' ')
				pos++;
			if (*pos == '\0')
				break;
			argv[i++] = pos;
			pos = FUNC4(pos, ' ');
			if (pos)
				*pos++ = '\0';
		}
		argv[i] = NULL;

		FUNC0(program, argv);
		FUNC8(MSG_ERROR, "execv: %s", FUNC6(errno));
		FUNC3(_program);
		FUNC3(_arg);
		FUNC1(0);
		return -1;
	}

	if (wait_completion) {
		/* wait for the child process to complete in the parent */
		FUNC7(pid, &pid_status, 0);
	}

	return 0;
}