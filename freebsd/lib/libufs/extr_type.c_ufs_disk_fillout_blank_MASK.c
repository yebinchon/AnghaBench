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
struct uufsd {int d_bsize; int d_fd; char const* d_name; int /*<<< orphan*/  d_mine; int /*<<< orphan*/ * d_sbcsum; int /*<<< orphan*/ * d_error; scalar_t__ d_ufs; scalar_t__ d_lcg; scalar_t__ d_inomax; scalar_t__ d_inomin; int /*<<< orphan*/ * d_inoblock; scalar_t__ d_ccg; } ;
struct statfs {int /*<<< orphan*/  f_mntfromname; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct fstab {char* fs_spec; } ;
typedef  int /*<<< orphan*/  dev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uufsd*,char*) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  MINE_NAME ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* _PATH_DEV ; 
 struct fstab* FUNC4 (char const*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char const*) ; 
 int FUNC7 (char const*,struct stat*) ; 
 scalar_t__ FUNC8 (char const*,struct statfs*) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC11(struct uufsd *disk, const char *name)
{
	struct stat st;
	struct fstab *fs;
	struct statfs sfs;
	const char *oname;
	char dev[MAXPATHLEN];
	int fd, ret;

	FUNC0(disk, NULL);

	oname = name;
again:	if ((ret = FUNC7(name, &st)) < 0) {
		if (*name != '/') {
			FUNC6(dev, sizeof(dev), "%s%s", _PATH_DEV, name);
			name = dev;
			goto again;
		}
		/*
		 * The given object doesn't exist, but don't panic just yet -
		 * it may be still mount point listed in /etc/fstab, but without
		 * existing corresponding directory.
		 */
		name = oname;
	}
	if (ret >= 0 && FUNC3(st.st_mode)) {
		/* Possibly a disk image, give it a try.  */
		;
	} else if (ret >= 0 && FUNC1(st.st_mode)) {
		/* This is what we need, do nothing. */
		;
	} else if ((fs = FUNC4(name)) != NULL) {
		/*
		 * The given mount point is listed in /etc/fstab.
		 * It is possible that someone unmounted file system by hand
		 * and different file system is mounted on this mount point,
		 * but we still prefer /etc/fstab entry, because on the other
		 * hand, there could be /etc/fstab entry for this mount
		 * point, but file system is not mounted yet (eg. noauto) and
		 * statfs(2) will point us at different file system.
		 */
		name = fs->fs_spec;
	} else if (ret >= 0 && FUNC2(st.st_mode)) {
		/*
		 * The mount point is not listed in /etc/fstab, so it may be
		 * file system mounted by hand.
		 */
		if (FUNC8(name, &sfs) < 0) {
			FUNC0(disk, "could not find special device");
			return (-1);
		}
		FUNC10(dev, sfs.f_mntfromname, sizeof(dev));
		name = dev;
	} else {
		FUNC0(disk, "could not find special device");
		return (-1);
	}
	fd = FUNC5(name, O_RDONLY);
	if (fd == -1) {
		FUNC0(disk, "could not open special device");
		return (-1);
	}

	disk->d_bsize = 1;
	disk->d_ccg = 0;
	disk->d_fd = fd;
	disk->d_inoblock = NULL;
	disk->d_inomin = 0;
	disk->d_inomax = 0;
	disk->d_lcg = 0;
	disk->d_mine = 0;
	disk->d_ufs = 0;
	disk->d_error = NULL;
	disk->d_sbcsum = NULL;

	if (oname != name) {
		name = FUNC9(name);
		if (name == NULL) {
			FUNC0(disk, "could not allocate memory for disk name");
			return (-1);
		}
		disk->d_mine |= MINE_NAME;
	}
	disk->d_name = name;

	return (0);
}