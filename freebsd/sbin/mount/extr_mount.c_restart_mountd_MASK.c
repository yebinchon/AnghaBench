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
struct pidfh {int dummy; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  _PATH_MOUNTDPID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct pidfh* FUNC2 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct pidfh *pfh;
	pid_t mountdpid;

	mountdpid = 0;
	pfh = FUNC2(_PATH_MOUNTDPID, 0600, &mountdpid);
	if (pfh != NULL) {
		/* Mountd is not running. */
		FUNC3(pfh);
		return;
	}
	if (errno != EEXIST) {
		/* Cannot open pidfile for some reason. */
		return;
	}

	/*
	 * Refuse to send broadcast or group signals, this has
	 * happened due to the bugs in pidfile(3).
	 */
	if (mountdpid <= 0) {
		FUNC4("mountd pid %d, refusing to send SIGHUP", mountdpid);
		return;
	}

	/* We have mountd(8) PID in mountdpid varible, let's signal it. */
	if (FUNC1(mountdpid, SIGHUP) == -1)
		FUNC0(1, "signal mountd");
}