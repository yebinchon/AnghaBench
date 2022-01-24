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
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void)
{
#if defined(HAVE_DAEMON) && !defined(DEPRECATED_DAEMON)
	/* use POSIX daemon(3) function */
	if(daemon(1, 0) != 0)
		fatal_exit("daemon failed: %s", strerror(errno));
#else /* no HAVE_DAEMON */
#ifdef HAVE_FORK
	int fd;
	/* Take off... */
	switch (fork()) {
		case 0:
			break;
		case -1:
			fatal_exit("fork failed: %s", strerror(errno));
		default:
			/* exit interactive session */
			exit(0);
	}
	/* detach */
#ifdef HAVE_SETSID
	if(setsid() == -1)
		fatal_exit("setsid() failed: %s", strerror(errno));
#endif
	if ((fd = open("/dev/null", O_RDWR, 0)) != -1) {
		(void)dup2(fd, STDIN_FILENO);
		(void)dup2(fd, STDOUT_FILENO);
		(void)dup2(fd, STDERR_FILENO);
		if (fd > 2)
			(void)close(fd);
	}
#endif /* HAVE_FORK */
#endif /* HAVE_DAEMON */
}