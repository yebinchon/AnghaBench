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
typedef  int /*<<< orphan*/  u_short ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  activefds ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ maxactivefd ; 
 int ninterfaces ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(
	u_short port
	)
{
#ifndef HAVE_IO_COMPLETION_PORT
	/*
	 * I/O Completion Ports don't care about the select and FD_SET
	 */
	maxactivefd = 0;
	FUNC1(&activefds);
#endif

	FUNC0(2, ("create_sockets(%d)\n", port));

	FUNC2(port);

	FUNC4(port, NULL, NULL);

	/*
	 * Now that we have opened all the sockets, turn off the reuse
	 * flag for security.
	 */
	FUNC3(0);

	FUNC0(2, ("create_sockets: Total interfaces = %d\n", ninterfaces));

	return ninterfaces;
}