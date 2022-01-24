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
 scalar_t__ ENOTTY ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  TIOCGDRAINWAIT ; 
 int /*<<< orphan*/  TIOCMGDTRWAIT ; 
 int /*<<< orphan*/  TIOCMSDTRWAIT ; 
 int /*<<< orphan*/  TIOCSDRAINWAIT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

int
FUNC9(int argc, char *argv[])
{
	int	fd;
	int     res = 0;
	int     print_dtrwait = 1, print_drainwait = 1;
	int     dtrwait = -1, drainwait = -1;

	if (argc < 2)
		FUNC7();

	if (FUNC6(argv[1], "-") == 0)
		fd = STDIN_FILENO;
	else {
		fd = FUNC4(argv[1], O_RDONLY|O_NONBLOCK, 0);
		if (fd < 0) {
			FUNC8("couldn't open file %s", argv[1]);
			return 1;
		}
	}
	if (argc == 2) {
		if (FUNC2(fd, TIOCMGDTRWAIT, &dtrwait) < 0) {
			print_dtrwait = 0;
			if (errno != ENOTTY) {
				res = 1;
				FUNC8("TIOCMGDTRWAIT");
			}
		}
		if (FUNC2(fd, TIOCGDRAINWAIT, &drainwait) < 0) {
			print_drainwait = 0;
			if (errno != ENOTTY) {
				res = 1;
				FUNC8("TIOCGDRAINWAIT");
			}
		}
		if (print_dtrwait)
			FUNC5("dtrwait %d ", dtrwait);
		if (print_drainwait)
			FUNC5("drainwait %d ", drainwait);
		FUNC5("\n");
	} else {
		while (argv[2] != NULL) {
			if (!FUNC6(argv[2],"dtrwait")) {
				if (dtrwait >= 0)
					FUNC7();
				if (argv[3] == NULL || !FUNC3(argv[3][0]))
					FUNC7();
				dtrwait = FUNC0(argv[3]);
				argv += 2;
			} else if (!FUNC6(argv[2],"drainwait")) {
				if (drainwait >= 0)
					FUNC7();
				if (argv[3] == NULL || !FUNC3(argv[3][0]))
					FUNC7();
				drainwait = FUNC0(argv[3]);
				argv += 2;
			} else
				FUNC7();
		}
		if (dtrwait >= 0) {
			if (FUNC2(fd, TIOCMSDTRWAIT, &dtrwait) < 0) {
				res = 1;
				FUNC8("TIOCMSDTRWAIT");
			}
		}
		if (drainwait >= 0) {
			if (FUNC2(fd, TIOCSDRAINWAIT, &drainwait) < 0) {
				res = 1;
				FUNC8("TIOCSDRAINWAIT");
			}
		}
	}

	FUNC1(fd);
	return res;
}