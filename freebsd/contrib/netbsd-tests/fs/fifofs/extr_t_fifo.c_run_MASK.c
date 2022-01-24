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
struct timespec {int member_1; int /*<<< orphan*/  member_0; } ;
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int ssize_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  action ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FIFO_FILE_PATH ; 
 int MSG_SIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (int,char*,size_t) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigchild_handler ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 
 int FUNC14 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int
FUNC16(void)
{
	pid_t pid;
	ssize_t rv;
	int fd, status;
	size_t buf_size = MSG_SIZE;
	char buf[MSG_SIZE];
	struct sigaction action;
	static const struct timespec ts = { 0, 500000000 };

	/* Catch sigchild Signal */
	FUNC5(&action, 0, sizeof(action));
	action.sa_handler = sigchild_handler;
	FUNC12(&action.sa_mask);

	if (FUNC11(SIGCHLD, &action, NULL) == -1)
		FUNC2(1, "sigaction");

	(void)FUNC13(FIFO_FILE_PATH);
	/* First create a fifo */
	if (FUNC6(FIFO_FILE_PATH, S_IRUSR | S_IWUSR) == -1)
		FUNC2(1, "mkfifo");

	switch ((pid = FUNC4())) {
	case -1:
		FUNC2(1, "fork");
	case 0:
		/* Open the file in write mode so that subsequent read 
		 * from parent side does not block the parent..
		 */
		if ((fd = FUNC8(FIFO_FILE_PATH, O_WRONLY, 0)) == -1)
			FUNC2(1, "failed to open fifo");

		/* In child */
		FUNC0();
		return 0;

	default:
		break;
	}

	if (verbose) {
		FUNC9("Child pid is %d\n", pid );
		FUNC3(stdout);
	}

	/* In parent */
	for (;;) {
		if ((fd = FUNC8(FIFO_FILE_PATH, O_RDONLY, 0)) == -1) {
			if (errno == EINTR)
				continue;
			else
				FUNC2(1, "Failed to open the fifo in read mode");
		}
		/* Read mode is opened */
		break;

	}

	FUNC7(&ts, NULL);
	if (verbose) {
		FUNC9("Was sleeping...\n");
		FUNC3(stdout);
	}

	for (;;) {
		rv = FUNC10(fd, buf, buf_size);

		if (rv == -1) {
			FUNC15("Failed to read");
			if (errno == EINTR) {
				if (verbose) {
					FUNC9("Parent interrupted, "
					    "continuing...\n");
					FUNC3(stdout);
				}
				continue;
			}

			break;
		}

		if (rv == 0) {
			if (verbose) {
				FUNC9("Writers have closed, looks like we "
				    "are done\n");
				FUNC3(stdout);
			}
			break;
		}

		if (verbose) {
			FUNC9("Received %zd bytes message '%s'\n", rv, buf);
			FUNC3(stdout);
		}
	}

	FUNC1(fd);

	if (verbose) {
		FUNC9("We are done.. now reap the child");
		FUNC3(stdout);
	}

	// Read the child...
	while (FUNC14(pid, &status, 0) == -1)
		if (errno != EINTR) {
			FUNC15("Failed to reap the child");
			return 1;
		}

	if (verbose) {
		FUNC9("We are done completely\n");
		FUNC3(stdout);
	}
	return 0;
}