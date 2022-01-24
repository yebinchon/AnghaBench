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
struct statfs {int f_flags; } ;
struct mtpt_info {int mi_mode; int mi_uid; int mi_gid; scalar_t__ mi_have_gid; scalar_t__ mi_have_uid; scalar_t__ mi_have_mode; scalar_t__ mi_forced_pw; } ;

/* Variables and functions */
 int MNT_RDONLY ; 
 int FUNC0 (char const*,int) ; 
 int FUNC1 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  norun ; 
 int FUNC4 (char const*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static void
FUNC7(const char *mtpoint, struct mtpt_info *mip)
{
	struct statfs sfs;

	if (!mip->mi_have_mode && !mip->mi_have_uid && !mip->mi_have_gid)
		return;

	if (!norun) {
		if (FUNC4(mtpoint, &sfs) == -1) {
			FUNC5("statfs: %s", mtpoint);
			return;
		}
		if ((sfs.f_flags & MNT_RDONLY) != 0) {
			if (mip->mi_forced_pw) {
				FUNC6(
	"Not changing mode/owner of %s since it is read-only",
				    mtpoint);
			} else {
				FUNC2(
	"Not changing mode/owner of %s since it is read-only",
				    mtpoint);
			}
			return;
		}
	}

	if (mip->mi_have_mode) {
		FUNC2("changing mode of %s to %o.", mtpoint,
		    mip->mi_mode);
		if (!norun)
			if (FUNC0(mtpoint, mip->mi_mode) == -1)
				FUNC3(1, "chmod: %s", mtpoint);
	}
	/*
	 * We have to do these separately because the user may have
	 * only specified one of them.
	 */
	if (mip->mi_have_uid) {
		FUNC2("changing owner (user) or %s to %u.", mtpoint,
		    mip->mi_uid);
		if (!norun)
			if (FUNC1(mtpoint, mip->mi_uid, -1) == -1)
				FUNC3(1, "chown %s to %u (user)", mtpoint,
				    mip->mi_uid);
	}
	if (mip->mi_have_gid) {
		FUNC2("changing owner (group) or %s to %u.", mtpoint,
		    mip->mi_gid);
		if (!norun)
			if (FUNC1(mtpoint, -1, mip->mi_gid) == -1)
				FUNC3(1, "chown %s to %u (group)", mtpoint,
				    mip->mi_gid);
	}
}