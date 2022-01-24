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
struct termios {int /*<<< orphan*/  c_cflag; int /*<<< orphan*/  c_lflag; int /*<<< orphan*/  c_oflag; int /*<<< orphan*/  c_iflag; } ;
struct TYPE_4__ {int /*<<< orphan*/  c_cflag; int /*<<< orphan*/  c_lflag; int /*<<< orphan*/  c_oflag; int /*<<< orphan*/  c_iflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ NC ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (struct termios*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ omode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ tmode ; 
 int /*<<< orphan*/  ttyn ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct termios def;

	/* Start with default tty settings. */
	if (FUNC4(STDIN_FILENO, &tmode) < 0) {
		FUNC3(LOG_ERR, "tcgetattr %s: %m", ttyn);
		FUNC2(1);
	}
	omode = tmode; /* fill c_cc for dogettytab() */
	FUNC1();
	/*
	 * Don't rely on the driver too much, and initialize crucial
	 * things according to <sys/ttydefaults.h>.  Avoid clobbering
	 * the c_cc[] settings however, the console drivers might wish
	 * to leave their idea of the preferred VERASE key value
	 * there.
	 */
	FUNC0(&def);
	tmode.c_iflag = def.c_iflag;
	tmode.c_oflag = def.c_oflag;
	tmode.c_lflag = def.c_lflag;
	tmode.c_cflag = def.c_cflag;
	if (NC)
		tmode.c_cflag |= CLOCAL;
	omode = tmode;
}