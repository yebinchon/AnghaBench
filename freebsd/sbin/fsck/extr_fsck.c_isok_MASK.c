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
struct fstab {scalar_t__ fs_passno; char* fs_spec; int /*<<< orphan*/  fs_file; int /*<<< orphan*/  fs_vfstype; int /*<<< orphan*/ * fs_mntops; int /*<<< orphan*/  fs_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int CHECK_BACKGRD ; 
 int DO_BACKGRD ; 
 int /*<<< orphan*/  FSTAB_RO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int flags ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC8(struct fstab *fs)
{
	int i;

	if (fs->fs_passno == 0)
		return (0);
	if (FUNC0(fs->fs_type))
		return (0);
	if (!FUNC4(fs->fs_vfstype))
		return (0);
	/*
	 * If the -B flag has been given, then process the needed
	 * background checks. Background checks cannot be run on
	 * file systems that will be mounted read-only or that were
	 * not mounted at boot time (typically those marked `noauto').
	 * If these basic tests are passed, check with the file system
	 * itself to see if it is willing to do background checking
	 * by invoking its check program with the -F flag.
	 */
	if (flags & DO_BACKGRD) {
		if (!FUNC5(fs->fs_type, FSTAB_RO))
			return (0);
		if (FUNC2(fs->fs_spec) == NULL)
			return (0);
		if (FUNC1(fs->fs_vfstype, fs->fs_spec, fs->fs_file, "-F", 0))
			return (0);
		return (1);
	}
	/*
	 * If the -F flag has been given, then consider deferring the
	 * check to background. Background checks cannot be run on
	 * file systems that will be mounted read-only or that will
	 * not be mounted at boot time (e.g., marked `noauto'). If
	 * these basic tests are passed, check with the file system
	 * itself to see if it is willing to defer to background
	 * checking by invoking its check program with the -F flag.
	 */
	if ((flags & CHECK_BACKGRD) == 0 || !FUNC5(fs->fs_type, FSTAB_RO))
		return (1);
	for (i = FUNC6(fs->fs_mntops) - 6; i >= 0; i--)
		if (!FUNC7(&fs->fs_mntops[i], "noauto", 6))
			break;
	if (i >= 0)
		return (1);
	if (FUNC1(fs->fs_vfstype, fs->fs_spec, fs->fs_file, "-F", NULL) != 0)
		return (1);
	FUNC3("%s: DEFER FOR BACKGROUND CHECKING\n", fs->fs_spec);
	return (0);
}