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
 int O_NOCTTY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  TIOCNOTTY ; 
 int /*<<< orphan*/  TIOCSCTTY ; 
 char const* _PATH_TTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(int *ttyfd, const char *tty)
{
	int fd;

	/* First disconnect from the old controlling tty. */
#ifdef TIOCNOTTY
	fd = open(_PATH_TTY, O_RDWR | O_NOCTTY);
	if (fd >= 0) {
		(void) ioctl(fd, TIOCNOTTY, NULL);
		close(fd);
	}
#endif /* TIOCNOTTY */
	if (FUNC6() < 0)
		FUNC2("setsid: %.100s", FUNC7(errno));

	/*
	 * Verify that we are successfully disconnected from the controlling
	 * tty.
	 */
	fd = FUNC4(_PATH_TTY, O_RDWR | O_NOCTTY);
	if (fd >= 0) {
		FUNC2("Failed to disconnect from controlling tty.");
		FUNC0(fd);
	}
	/* Make it our controlling tty. */
#ifdef TIOCSCTTY
	debug("Setting controlling tty using TIOCSCTTY.");
	if (ioctl(*ttyfd, TIOCSCTTY, NULL) < 0)
		error("ioctl(TIOCSCTTY): %.100s", strerror(errno));
#endif /* TIOCSCTTY */
#ifdef NEED_SETPGRP
	if (setpgrp(0,0) < 0)
		error("SETPGRP %s",strerror(errno));
#endif /* NEED_SETPGRP */
	fd = FUNC4(tty, O_RDWR);
	if (fd < 0)
		FUNC2("%.100s: %.100s", tty, FUNC7(errno));
	else
		FUNC0(fd);

	/* Verify that we now have a controlling tty. */
	fd = FUNC4(_PATH_TTY, O_WRONLY);
	if (fd < 0)
		FUNC2("open /dev/tty failed - could not set controlling tty: %.100s",
		    FUNC7(errno));
	else
		FUNC0(fd);
}