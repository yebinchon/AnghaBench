#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sshbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ request_tty; } ;

/* Variables and functions */
 scalar_t__ REQUEST_TTY_FORCE ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_1__ options ; 
 int received_window_change_signal ; 
 scalar_t__ FUNC6 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct sshbuf*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  vwrite ; 

__attribute__((used)) static void
FUNC9(struct sshbuf *bin, struct sshbuf *bout, struct sshbuf *berr)
{
	/* Flush stdout and stderr buffers. */
	if (FUNC6(bout) > 0)
		FUNC0(vwrite, FUNC2(stdout), FUNC7(bout),
		    FUNC6(bout));
	if (FUNC6(berr) > 0)
		FUNC0(vwrite, FUNC2(stderr), FUNC7(berr),
		    FUNC6(berr));

	FUNC5(options.request_tty == REQUEST_TTY_FORCE);

	FUNC8(bin);
	FUNC8(bout);
	FUNC8(berr);

	/* Send the suspend signal to the program itself. */
	FUNC4(FUNC3(), SIGTSTP);

	/* Reset window sizes in case they have changed */
	received_window_change_signal = 1;

	FUNC1(options.request_tty == REQUEST_TTY_FORCE);
}