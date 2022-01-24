#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct open_file {int /*<<< orphan*/  f_devdata; TYPE_1__* f_dev; scalar_t__ f_fsdata; } ;
struct ext2dinode {int dummy; } ;
struct file {int* f_blkno; int f_buf_blkno; scalar_t__ f_seekp; struct ext2dinode f_di; int /*<<< orphan*/  f_bg; struct ext2fs* f_fs; } ;
struct ext2fs {size_t fs_bsize; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_2__ {int (* dv_strategy ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*,size_t*) ;} ;

/* Variables and functions */
 int EIO ; 
 int EXT2_NIADDR ; 
 int /*<<< orphan*/  F_READ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (struct ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ext2fs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(ino_t inumber, struct open_file *f)
{
	struct file *fp = (struct file *)f->f_fsdata;
	struct ext2fs *fs = fp->f_fs;
	struct ext2dinode *dp;
	char *buf;
	size_t rsize;
	int level, error = 0;

	/*
	 * Read inode and save it.
	 */
	buf = FUNC3(fs->fs_bsize);
	FUNC5(1);
	error = (f->f_dev->dv_strategy)(f->f_devdata, F_READ,
	    FUNC2(fs, fp->f_bg, inumber), fs->fs_bsize, buf, &rsize);
	if (error)
		goto out;
	if (rsize != fs->fs_bsize) {
		error = EIO;
		goto out;
	}

	dp = (struct ext2dinode *)buf;
	fp->f_di = dp[FUNC1(fs, inumber)];

	/* clear out old buffers */
	for (level = 0; level < EXT2_NIADDR; level++)
		fp->f_blkno[level] = -1;
	fp->f_buf_blkno = -1;
	fp->f_seekp = 0;

out:
	FUNC0(buf);
	return (error);	 
}