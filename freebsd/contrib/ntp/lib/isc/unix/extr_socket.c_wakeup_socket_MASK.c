#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_result_t ;
struct TYPE_5__ {scalar_t__* fdstate; int /*<<< orphan*/ * fdlock; scalar_t__ maxsocks; } ;
typedef  TYPE_1__ isc__socketmgr_t ;

/* Variables and functions */
 scalar_t__ CLOSED ; 
 scalar_t__ CLOSE_PENDING ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ISC_LOGCATEGORY_GENERAL ; 
 int /*<<< orphan*/  ISC_LOGMODULE_SOCKET ; 
 int /*<<< orphan*/  ISC_LOG_ERROR ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ MANAGED ; 
 int SELECT_POKE_CLOSE ; 
 int /*<<< orphan*/  SELECT_POKE_READ ; 
 int /*<<< orphan*/  SELECT_POKE_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  isc_lctx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void
FUNC9(isc__socketmgr_t *manager, int fd, int msg) {
	isc_result_t result;
	int lockid = FUNC0(fd);

	/*
	 * This is a wakeup on a socket.  If the socket is not in the
	 * process of being closed, start watching it for either reads
	 * or writes.
	 */

	FUNC1(fd >= 0 && fd < (int)manager->maxsocks);

	if (msg == SELECT_POKE_CLOSE) {
		/* No one should be updating fdstate, so no need to lock it */
		FUNC1(manager->fdstate[fd] == CLOSE_PENDING);
		manager->fdstate[fd] = CLOSED;
		(void)FUNC7(manager, fd, SELECT_POKE_READ);
		(void)FUNC7(manager, fd, SELECT_POKE_WRITE);
		(void)FUNC4(fd);
		return;
	}

	FUNC2(&manager->fdlock[lockid]);
	if (manager->fdstate[fd] == CLOSE_PENDING) {
		FUNC3(&manager->fdlock[lockid]);

		/*
		 * We accept (and ignore) any error from unwatch_fd() as we are
		 * closing the socket, hoping it doesn't leave dangling state in
		 * the kernel.
		 * Note that unwatch_fd() must be called after releasing the
		 * fdlock; otherwise it could cause deadlock due to a lock order
		 * reversal.
		 */
		(void)FUNC7(manager, fd, SELECT_POKE_READ);
		(void)FUNC7(manager, fd, SELECT_POKE_WRITE);
		return;
	}
	if (manager->fdstate[fd] != MANAGED) {
		FUNC3(&manager->fdlock[lockid]);
		return;
	}
	FUNC3(&manager->fdlock[lockid]);

	/*
	 * Set requested bit.
	 */
	result = FUNC8(manager, fd, msg);
	if (result != ISC_R_SUCCESS) {
		/*
		 * XXXJT: what should we do?  Ignoring the failure of watching
		 * a socket will make the application dysfunctional, but there
		 * seems to be no reasonable recovery process.
		 */
		FUNC5(isc_lctx, ISC_LOGCATEGORY_GENERAL,
			      ISC_LOGMODULE_SOCKET, ISC_LOG_ERROR,
			      "failed to start watching FD (%d): %s",
			      fd, FUNC6(result));
	}
}