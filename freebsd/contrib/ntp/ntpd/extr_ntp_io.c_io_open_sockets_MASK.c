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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTP_PORT ; 
 int /*<<< orphan*/  SAVECONFIGQUIT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  maxactivefd ; 

void
FUNC6(void)
{
	static int already_opened;

	if (already_opened || FUNC2( SAVECONFIGQUIT ))
		return;

	already_opened = 1;

	/*
	 * Create the sockets
	 */
	FUNC0();
	FUNC4(NTP_PORT);
	FUNC3();

	FUNC5();

	FUNC1(3, ("io_open_sockets: maxactivefd %d\n", maxactivefd));
}