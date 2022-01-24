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
struct fs {int /*<<< orphan*/  fs_ncg; } ;
struct uufsd {int /*<<< orphan*/  d_fd; struct fs d_fs; } ;

/* Variables and functions */
#define  EIO 128 
 int /*<<< orphan*/  FUNC0 (struct uufsd*,char*) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,struct fs*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uufsd*) ; 

int
FUNC3(struct uufsd *disk, int all)
{
	struct fs *fs;
	int rv;

	FUNC0(disk, NULL);

	rv = FUNC2(disk);
	if (rv == -1) {
		FUNC0(disk, "failed to open disk for writing");
		return (-1);
	}

	fs = &disk->d_fs;
	if ((errno = FUNC1(disk->d_fd, fs, all ? fs->fs_ncg : 0)) != 0) {
		switch (errno) {
		case EIO:
			FUNC0(disk, "failed to write superblock");
			break;
		default:
			FUNC0(disk, "unknown superblock write error");
			errno = EIO;
			break;
		}
		return (-1);
	}
	return (0);
}