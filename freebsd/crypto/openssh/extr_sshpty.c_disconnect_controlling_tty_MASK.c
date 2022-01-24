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
 int /*<<< orphan*/  TIOCNOTTY ; 
 int /*<<< orphan*/  _PATH_TTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3(void)
{
#ifdef TIOCNOTTY
	int fd;

	if ((fd = open(_PATH_TTY, O_RDWR | O_NOCTTY)) >= 0) {
		(void) ioctl(fd, TIOCNOTTY, NULL);
		close(fd);
	}
#endif /* TIOCNOTTY */
}