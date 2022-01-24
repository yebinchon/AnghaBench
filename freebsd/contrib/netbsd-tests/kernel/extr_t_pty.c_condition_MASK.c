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
struct termios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B921600 ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  TIOCGQSIZE ; 
 int /*<<< orphan*/  TIOCSQSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct termios*) ; 
 int /*<<< orphan*/  FUNC1 (struct termios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int*) ; 
 int qsize ; 
 int FUNC5 (int,struct termios*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,struct termios*) ; 

__attribute__((used)) static void
FUNC7(int fd)
{
	struct termios	tios;

	if (qsize) {
		int opt = qsize;
		if (FUNC4(fd, TIOCSQSIZE, &opt) == -1)
			FUNC2(EXIT_FAILURE, "Couldn't set tty(4) buffer size");
		if (FUNC4(fd, TIOCGQSIZE, &opt) == -1)
			FUNC2(EXIT_FAILURE, "Couldn't get tty(4) buffer size");
		if (opt != qsize)
			FUNC3(EXIT_FAILURE, "Wrong qsize %d != %d\n",
			    qsize, opt);
	}
	if (FUNC5(fd, &tios) == -1)
		FUNC2(EXIT_FAILURE, "tcgetattr()");
	FUNC0(&tios);
	FUNC1(&tios, B921600);
	if (FUNC6(fd, TCSANOW, &tios) == -1)
		FUNC2(EXIT_FAILURE, "tcsetattr()");
}