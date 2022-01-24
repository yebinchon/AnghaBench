#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union dinode {int dummy; } dinode ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
typedef  scalar_t__ ino_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {scalar_t__ fs_magic; } ;

/* Variables and functions */
 scalar_t__ FS_UFS1_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ fullcnt ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 long inobufsize ; 
 scalar_t__ inodebuf ; 
 scalar_t__ lastinum ; 
 scalar_t__ lastvalidinum ; 
 int /*<<< orphan*/  nextino ; 
 scalar_t__ partialcnt ; 
 long partialsize ; 
 int readcnt ; 
 int readpercg ; 
 TYPE_1__ sblock ; 

union dinode *
FUNC4(ino_t inumber)
{
	long size;
	ufs2_daddr_t dblk;
	union dinode *dp;
	static caddr_t nextinop;

	if (inumber != nextino++ || inumber > lastvalidinum)
		FUNC1(1, "bad inode number %ju to nextinode",
		    (uintmax_t)inumber);
	if (inumber >= lastinum) {
		readcnt++;
		dblk = FUNC2(&sblock, FUNC3(&sblock, lastinum));
		if (readcnt % readpercg == 0) {
			size = partialsize;
			lastinum += partialcnt;
		} else {
			size = inobufsize;
			lastinum += fullcnt;
		}
		/*
		 * If blkread returns an error, it will already have zeroed
		 * out the buffer, so we do not need to do so here.
		 */
		FUNC0(dblk, inodebuf, size);
		nextinop = inodebuf;
	}
	dp = (union dinode *)nextinop;
	if (sblock.fs_magic == FS_UFS1_MAGIC)
		nextinop += sizeof(struct ufs1_dinode);
	else
		nextinop += sizeof(struct ufs2_dinode);
	return (dp);
}