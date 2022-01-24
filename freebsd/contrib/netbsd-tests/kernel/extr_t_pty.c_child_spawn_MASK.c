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
struct pollfd {int fd; int events; int revents; } ;
typedef  int ssize_t ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int POLLERR ; 
 int POLLIN ; 
 size_t buffer_size ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dbuf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 size_t packets ; 
 int FUNC6 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int qsize ; 
 int FUNC8 (int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (char const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static pid_t
FUNC11(const char *ttydev)
{
	pid_t		pid;
	int		tty;
	struct pollfd	pfd;
	size_t		total = 0;

	if ((pid = FUNC5()) == -1)
		FUNC1(EXIT_FAILURE, "fork()");
	(void)FUNC9();
	if (pid != 0)
		return pid;

	if (verbose)
		(void)FUNC7("child: started; open \"%s\"\n", ttydev);
	tty = FUNC10(ttydev);
	FUNC4(tty);

	if (verbose)
		(void)FUNC7("child: TTY open, starting read loop\n");
	pfd.fd = tty;
	pfd.events = POLLIN;
	pfd.revents = 0;
	for (;;) {
		int	ret;
		ssize_t	size;

		if (verbose)
			(void)FUNC7("child: polling\n");
		if ((ret = FUNC6(&pfd, 1, 2000)) == -1)
			FUNC1(EXIT_FAILURE, "child: poll()");
		if (ret == 0)
			break;
		if ((pfd.revents & POLLERR) != 0)
			break;
		if ((pfd.revents & POLLIN) != 0) {
			for (;;) {
				if (verbose)
					(void)FUNC7(
					    "child: attempting to read %zu"
					    " bytes\n", buffer_size);
				if ((size = FUNC8(tty, dbuf, buffer_size))
				    == -1) {
					if (errno == EAGAIN)
						break;
					FUNC1(EXIT_FAILURE, "child: read()");
				}
				if (qsize && size < qsize &&
				    (size_t)size < buffer_size)
					FUNC2(EXIT_FAILURE, "read returned %zd "
					    "less than the queue size %d",
					    size, qsize);
				if (verbose)
					(void)FUNC7(
					    "child: read %zd bytes from TTY\n",
					    size);
				if (size == 0)
					goto end;
				total += size;
			}
		}
	}
end:
	if (verbose)
		(void)FUNC7("child: closing TTY %zu\n", total);
	(void)FUNC0(tty);
	if (verbose)
		(void)FUNC7("child: exiting\n");
	if (total != buffer_size * packets)
		FUNC2(EXIT_FAILURE,
		    "Lost data %zu != %zu\n", total, buffer_size * packets);

	FUNC3(EXIT_SUCCESS);
}