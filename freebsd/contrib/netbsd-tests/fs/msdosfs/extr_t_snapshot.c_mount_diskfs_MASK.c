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
struct msdosfs_args {int /*<<< orphan*/  version; int /*<<< orphan*/  fspec; } ;
typedef  int /*<<< orphan*/  margs ;

/* Variables and functions */
 int /*<<< orphan*/  MOUNT_MSDOS ; 
 int /*<<< orphan*/  MSDOSFSMNT_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct msdosfs_args*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct msdosfs_args*,int) ; 

__attribute__((used)) static void
FUNC4(const char *fspec, const char *path)
{
	struct msdosfs_args margs;

	FUNC2(&margs, 0, sizeof(margs));
	margs.fspec = FUNC0(fspec);
	margs.version = MSDOSFSMNT_VERSION;

	if (FUNC3(MOUNT_MSDOS, path, 0, &margs, sizeof(margs)) == -1)
		FUNC1(1, "mount msdosfs %s", path);
}