#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct winsize {int dummy; } ;
struct termios {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ws_col; int /*<<< orphan*/  ws_row; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  TTY_DEFAULT_COLS ; 
 int /*<<< orphan*/  TTY_DEFAULT_ROWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int) ; 
 TYPE_1__* maxsize ; 
 int /*<<< orphan*/  FUNC4 (void*,char,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,struct termios*) ; 

__attribute__((used)) static void
FUNC7(void)
{
	int fd = STDIN_FILENO;
	struct termios t;

	if (maxsize == NULL) {
		if ((maxsize = FUNC3(sizeof(struct winsize))) == NULL)
			FUNC0(EXIT_FAILURE, "Out of memory?!");
		FUNC4((void *)maxsize, '\0', sizeof(struct winsize));
	}

	if (!FUNC2(fd))
		fd = FUNC5("/dev/tty", O_RDONLY);
	if ((FUNC6(fd, &t) < 0) || (FUNC1(fd, TIOCGWINSZ, maxsize) < 0)) {
		maxsize->ws_row = TTY_DEFAULT_ROWS;
		maxsize->ws_col = TTY_DEFAULT_COLS;
	}
}