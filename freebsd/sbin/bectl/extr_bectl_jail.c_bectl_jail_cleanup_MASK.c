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
struct statfs {char* f_mntonname; scalar_t__ f_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 scalar_t__ MNTTYPE_ZFS ; 
 int /*<<< orphan*/  MNT_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC1 (struct statfs**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*,size_t) ; 
 size_t FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(char *mountpoint, int jid)
{
	struct statfs *mntbuf;
	size_t i, searchlen, mntsize;

	if (jid >= 0 && FUNC2(jid) != 0) {
		FUNC0(stderr, "unable to remove jail");
		return (1);
	}

	searchlen = FUNC4(mountpoint, MAXPATHLEN);
	mntsize = FUNC1(&mntbuf, MNT_NOWAIT);
	for (i = 0; i < mntsize; i++) {
		if (FUNC3(mountpoint, mntbuf[i].f_mntonname, searchlen) == 0 &&
		    mntbuf[i].f_type != MNTTYPE_ZFS) {

			if (FUNC5(mntbuf[i].f_mntonname, 0) != 0) {
				FUNC0(stderr, "bectl jail: unable to unmount filesystem %s",
				    mntbuf[i].f_mntonname);
				return (1);
			}
		}
	}

	return (0);
}