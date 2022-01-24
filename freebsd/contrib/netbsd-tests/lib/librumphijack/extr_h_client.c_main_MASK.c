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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct pollfd {int fd; scalar_t__ revents; void* events; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ ENFILE ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_MAXFD ; 
 int /*<<< orphan*/  INFTIM ; 
 int /*<<< orphan*/  O_RDWR ; 
 void* POLLIN ; 
 scalar_t__ POLLNVAL ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int*) ; 
 int FUNC10 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 

int
FUNC13(int argc, char *argv[])
{

	if (argc != 2) {
		FUNC6(1, "need testname as param");
	}

	if (FUNC12(argv[1], "select_timeout") == 0) {
		fd_set rfds;
		struct timeval tv;
		int pipefd[2];
		int rv;

		tv.tv_sec = 0;
		tv.tv_usec = 1;

		if (FUNC9(pipefd) == -1)
			FUNC5(EXIT_FAILURE, "pipe");
		FUNC2(&rfds);
		FUNC1(pipefd[0], &rfds);

		rv = FUNC11(pipefd[0]+1, &rfds, NULL, NULL, &tv);
		if (rv == -1)
			FUNC5(EXIT_FAILURE, "select");
		if (rv != 0)
			FUNC6(EXIT_FAILURE, "select succesful");

		if (FUNC0(pipefd[0], &rfds))
			FUNC6(EXIT_FAILURE, "stdin fileno is still set");
		return EXIT_SUCCESS;
	} else if (FUNC12(argv[1], "select_allunset") == 0) {
		fd_set fds;
		struct timeval tv;
		int rv;

		tv.tv_sec = 0;
		tv.tv_usec = 1;

		FUNC2(&fds);

		rv = FUNC11(100, &fds, &fds, &fds, &tv);
		if (rv == -1)
			FUNC5(EXIT_FAILURE, "select");
		if (rv != 0)
			FUNC6(EXIT_FAILURE, "select succesful");

		rv = FUNC11(0, NULL, NULL, NULL, &tv);
		if (rv == -1)
			FUNC5(EXIT_FAILURE, "select2");
		if (rv != 0)
			FUNC6(EXIT_FAILURE, "select2 succesful");

		return EXIT_SUCCESS;
	} else if (FUNC12(argv[1], "invafd") == 0) {
		struct pollfd pfd[2];
		int fd, rv;

		fd = FUNC8("/rump/dev/null", O_RDWR);
		if (fd == -1)
			FUNC5(EXIT_FAILURE, "open");
		FUNC3(fd);

		pfd[0].fd = STDIN_FILENO;
		pfd[0].events = POLLIN;
		pfd[1].fd = fd;
		pfd[1].events = POLLIN;

		if ((rv = FUNC10(pfd, 2, INFTIM)) != 1)
			FUNC6(EXIT_FAILURE, "poll unexpected rv %d (%d)",
			    rv, errno);
		if (pfd[1].revents != POLLNVAL || pfd[0].revents != 0)
			FUNC6(EXIT_FAILURE, "poll unexpected revents");

		return EXIT_SUCCESS;
	} else if (FUNC12(argv[1], "fdoff8") == 0) {

		(void)FUNC4(0);

		int fd;

		do {
			if ((fd = FUNC8("/dev/null", O_RDWR)) == -1)
				FUNC5(EXIT_FAILURE, "open1");
		} while (fd < 7);
		fd = FUNC8("/dev/null", O_RDWR);
		if (fd != -1 || errno != ENFILE)
			FUNC6(EXIT_FAILURE, "unexpected fd8 %d %d", fd, errno);
		if (FUNC7(0, F_MAXFD) != 7)
			FUNC6(EXIT_FAILURE, "fd leak?");
		if ((fd = FUNC8("/rump/dev/null", O_RDWR)) != 8)
			FUNC6(EXIT_FAILURE, "rump open %d %d", fd, errno);
		return EXIT_SUCCESS;
	} else {
		return ENOTSUP;
	}
}