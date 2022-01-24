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
struct termios {int /*<<< orphan*/  c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIGNORE ; 
 int /*<<< orphan*/  EINVAL ; 
#define  TCSADRAIN 130 
#define  TCSAFLUSH 129 
#define  TCSANOW 128 
 int TCSASOFT ; 
 int /*<<< orphan*/  TIOCSETA ; 
 int /*<<< orphan*/  TIOCSETAF ; 
 int /*<<< orphan*/  TIOCSETAW ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct termios const*) ; 
 int /*<<< orphan*/  errno ; 

int
FUNC1(int fd, int opt, const struct termios *t)
{
	struct termios localterm;

	if (opt & TCSASOFT) {
		localterm = *t;
		localterm.c_cflag |= CIGNORE;
		t = &localterm;
	}
	switch (opt & ~TCSASOFT) {
	case TCSANOW:
		return (FUNC0(fd, TIOCSETA, t));
	case TCSADRAIN:
		return (FUNC0(fd, TIOCSETAW, t));
	case TCSAFLUSH:
		return (FUNC0(fd, TIOCSETAF, t));
	default:
		errno = EINVAL;
		return (-1);
	}
}