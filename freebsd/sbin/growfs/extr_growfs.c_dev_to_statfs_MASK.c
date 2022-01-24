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
typedef  struct statfs {char* f_mntfromname; } const statfs ;
struct stat {scalar_t__ st_rdev; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  MNT_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _PATH_DEV ; 
 int FUNC2 (struct statfs const**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct statfs *
FUNC6(const char *dev)
{
	struct stat devstat, mntdevstat;
	struct statfs *mntbuf, *statfsp;
	char device[MAXPATHLEN];
	char *mntdevname;
	int i, mntsize;

	/*
	 * First check the mounted filesystems.
	 */
	if (FUNC3(dev, &devstat) != 0)
		return (NULL);
	if (!FUNC1(devstat.st_mode) && !FUNC0(devstat.st_mode))
		return (NULL);

	mntsize = FUNC2(&mntbuf, MNT_NOWAIT);
	for (i = 0; i < mntsize; i++) {
		statfsp = &mntbuf[i];
		mntdevname = statfsp->f_mntfromname;
		if (*mntdevname != '/') {
			FUNC5(device, _PATH_DEV);
			FUNC4(device, mntdevname);
			mntdevname = device;
		}
		if (FUNC3(mntdevname, &mntdevstat) == 0 &&
		    mntdevstat.st_rdev == devstat.st_rdev)
			return (statfsp);
	}

	return (NULL);
}