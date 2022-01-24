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
struct fs {scalar_t__ fs_magic; int fs_fsize; int fs_sblockloc; int /*<<< orphan*/  fs_csp; int /*<<< orphan*/  fs_sbsize; } ;
struct uufsd {int d_ufs; int d_bsize; int d_sblock; int /*<<< orphan*/  d_sbcsum; struct fs d_fs; int /*<<< orphan*/  d_fd; } ;

/* Variables and functions */
#define  EINVAL 131 
#define  EIO 130 
#define  ENOENT 129 
#define  ENOSPC 128 
 int /*<<< orphan*/  FUNC0 (struct uufsd*,char*) ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 scalar_t__ FS_UFS2_MAGIC ; 
 int /*<<< orphan*/  STDSB ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct fs*) ; 
 int FUNC2 (struct fs*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fs*,struct fs*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fs**,int /*<<< orphan*/ ) ; 

int
FUNC5(struct uufsd *disk)
{
	struct fs *fs;

	FUNC0(disk, NULL);

	if ((errno = FUNC4(disk->d_fd, &fs, STDSB)) != 0) {
		switch (errno) {
		case EIO:
			FUNC0(disk, "non-existent or truncated superblock");
			break;
		case ENOENT:
			FUNC0(disk, "no usable known superblock found");
			break;
		case ENOSPC:
			FUNC0(disk, "failed to allocate space for superblock "
			    "information");
			break;
		case EINVAL:
			FUNC0(disk, "The previous newfs operation on this "
			    "volume did not complete.\nYou must complete "
			    "newfs before using this volume.");
			break;
		default:
			FUNC0(disk, "unknown superblock read error");
			errno = EIO;
			break;
		}
		disk->d_ufs = 0;
		return (-1);
	}
	FUNC3(&disk->d_fs, fs, fs->fs_sbsize);
	FUNC1(fs);
	fs = &disk->d_fs;
	if (fs->fs_magic == FS_UFS1_MAGIC)
		disk->d_ufs = 1;
	if (fs->fs_magic == FS_UFS2_MAGIC)
		disk->d_ufs = 2;
	disk->d_bsize = fs->fs_fsize / FUNC2(fs, 1);
	disk->d_sblock = fs->fs_sblockloc / disk->d_bsize;
	disk->d_sbcsum = fs->fs_csp;
	return (0);
}