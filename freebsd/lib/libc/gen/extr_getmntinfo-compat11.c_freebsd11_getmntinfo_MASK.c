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
struct freebsd11_statfs {int dummy; } ;

/* Variables and functions */
 int MNT_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct freebsd11_statfs*) ; 
 int FUNC1 (struct freebsd11_statfs*,long,int) ; 
 scalar_t__ FUNC2 (long) ; 

int
FUNC3(struct freebsd11_statfs **mntbufp, int flags)
{
	static struct freebsd11_statfs *mntbuf;
	static int mntsize;
	static long bufsize;

	if (mntsize <= 0 &&
	    (mntsize = FUNC1(0, 0, MNT_NOWAIT)) < 0)
		return (0);
	if (bufsize > 0 &&
	    (mntsize = FUNC1(mntbuf, bufsize, flags)) < 0)
		return (0);
	while (bufsize <= mntsize * sizeof(struct freebsd11_statfs)) {
		if (mntbuf)
			FUNC0(mntbuf);
		bufsize = (mntsize + 1) * sizeof(struct freebsd11_statfs);
		if ((mntbuf = (struct freebsd11_statfs *)FUNC2(bufsize)) == 0)
			return (0);
		if ((mntsize = FUNC1(mntbuf, bufsize, flags)) < 0)
			return (0);
	}
	*mntbufp = mntbuf;
	return (mntsize);
}