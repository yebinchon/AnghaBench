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
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (void*,size_t) ; 
 int FUNC1 (void*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(void *buf, size_t len)
{
	int ret = -1;

	if (len > 256) {
		errno = EIO;
		return -1;
	}

	/*
	 * Try to get entropy with /dev/urandom
	 *
	 * Solaris provides /dev/urandom as a symbolic link to
	 * /devices/pseudo/random@0:urandom which is provided by
	 * a devfs filesystem.  Best practice is to use O_NOFOLLOW,
	 * so we must try the unpublished name directly.
	 *
	 * This can fail if the process is inside a chroot which lacks
	 * the devfs mount, or if file descriptors are exhausted.
	 */
	ret = FUNC1(buf, len,
	    "/devices/pseudo/random@0:urandom", 1);
	if (ret != -1)
		return (ret);

	/*
	 * Unfortunately, chroot spaces on Solaris are sometimes setup
	 * with direct device node of the well-known /dev/urandom name
	 * (perhaps to avoid dragging all of devfs into the space).
	 *
	 * This can fail if the process is inside a chroot or if file
	 * descriptors are exhausted.
	 */
	ret = FUNC1(buf, len, "/dev/urandom", 0);
	if (ret != -1)
		return (ret);

	/*
	 * Entropy collection via /dev/urandom has failed.
	 *
	 * No other API exists for collecting entropy, and we have
	 * no failsafe way to get it on Solaris that is not sensitive
	 * to resource exhaustion.
	 *
	 * We have very few options:
	 *     - Even syslog_r is unsafe to call at this low level, so
	 *	 there is no way to alert the user or program.
	 *     - Cannot call abort() because some systems have unsafe
	 *	 corefiles.
	 *     - Could raise(SIGKILL) resulting in silent program termination.
	 *     - Return EIO, to hint that arc4random's stir function
	 *       should raise(SIGKILL)
	 *     - Do the best under the circumstances....
	 *
	 * This code path exists to bring light to the issue that Solaris
	 * does not provide a failsafe API for entropy collection.
	 *
	 * We hope this demonstrates that Solaris should consider
	 * providing a new failsafe API which works in a chroot or
	 * when file descriptors are exhausted.
	 */
#undef FAIL_INSTEAD_OF_TRYING_FALLBACK
#ifdef FAIL_INSTEAD_OF_TRYING_FALLBACK
	raise(SIGKILL);
#endif
	ret = FUNC0(buf, len);
	if (ret != -1)
		return (ret);

	errno = EIO;
	return (ret);
}