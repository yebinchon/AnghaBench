#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ di_size; scalar_t__ di_mode; int /*<<< orphan*/  di_ib; int /*<<< orphan*/  di_db; } ;
union dinode {TYPE_2__ dp2; } ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int ufs2_daddr_t ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
typedef  scalar_t__ off_t ;
typedef  scalar_t__ mode_t ;
typedef  scalar_t__ ino_t ;
typedef  char* caddr_t ;
struct TYPE_13__ {char* b_buf; } ;
struct TYPE_17__ {TYPE_1__ b_un; } ;
struct TYPE_16__ {scalar_t__ fs_magic; int fs_bsize; scalar_t__ fs_maxsymlinklen; } ;
struct TYPE_15__ {int /*<<< orphan*/  di_ib; int /*<<< orphan*/  di_db; } ;

/* Variables and functions */
 int CK_INODE ; 
 scalar_t__ FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EEXIT ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 scalar_t__ IFBLK ; 
 scalar_t__ IFCHR ; 
 scalar_t__ IFLNK ; 
 scalar_t__ IFMT ; 
 int FUNC1 (TYPE_4__*) ; 
 int UFS_NDADDR ; 
 int UFS_NIADDR ; 
 int ckhashadd ; 
 int /*<<< orphan*/ * di_db ; 
 int /*<<< orphan*/ * di_ib ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_size ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct ufs2_dinode*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,struct ufs2_dinode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  fswritefd ; 
 int /*<<< orphan*/  FUNC7 (union dinode*) ; 
 scalar_t__ fullcnt ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int,long) ; 
 int FUNC9 (scalar_t__,int) ; 
 int FUNC10 (TYPE_4__*,scalar_t__) ; 
 TYPE_5__ inobuf ; 
 long inobufsize ; 
 scalar_t__ lastinum ; 
 scalar_t__ lastvalidinum ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nextino ; 
 scalar_t__ partialcnt ; 
 long partialsize ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,union dinode*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int readcount ; 
 int readpercg ; 
 scalar_t__ FUNC15 (char*) ; 
 TYPE_4__ sblock ; 
 TYPE_3__ ufs2_zino ; 

union dinode *
FUNC16(ino_t inumber, int rebuildcg)
{
	int j;
	long size;
	mode_t mode;
	ufs2_daddr_t ndb, blk;
	union dinode *dp;
	static caddr_t nextinop;

	if (inumber != nextino++ || inumber > lastvalidinum)
		FUNC3(EEXIT, "bad inode number %ju to nextinode",
		    (uintmax_t)inumber);
	if (inumber >= lastinum) {
		readcount++;
		blk = FUNC10(&sblock, lastinum);
		if (readcount % readpercg == 0) {
			size = partialsize;
			lastinum += partialcnt;
		} else {
			size = inobufsize;
			lastinum += fullcnt;
		}
		/*
		 * Flush old contents in case they have been updated.
		 * If getblk encounters an error, it will already have zeroed
		 * out the buffer, so we do not need to do so here.
		 */
		FUNC6(fswritefd, &inobuf);
		FUNC8(&inobuf, blk, size);
		nextinop = inobuf.b_un.b_buf;
	}
	dp = (union dinode *)nextinop;
	if (sblock.fs_magic == FS_UFS1_MAGIC)
		nextinop += sizeof(struct ufs1_dinode);
	else
		nextinop += sizeof(struct ufs2_dinode);
	if ((ckhashadd & CK_INODE) != 0) {
		FUNC4(&sblock, (struct ufs2_dinode *)dp);
		FUNC2(&inobuf);
	}
	if (FUNC5(&sblock, (struct ufs2_dinode *)dp) != 0) {
		FUNC14("INODE CHECK-HASH FAILED");
		FUNC13(inumber, dp);
		if (preen || FUNC15("FIX") != 0) {
			if (preen)
				FUNC12(" (FIXED)\n");
			FUNC4(&sblock,
			    (struct ufs2_dinode *)dp);
			FUNC2(&inobuf);
		}
	}
	if (rebuildcg && (char *)dp == inobuf.b_un.b_buf) {
		/*
		 * Try to determine if we have reached the end of the
		 * allocated inodes.
		 */
		mode = FUNC0(dp, di_mode) & IFMT;
		if (mode == 0) {
			if (FUNC11(dp->dp2.di_db, ufs2_zino.di_db,
				UFS_NDADDR * sizeof(ufs2_daddr_t)) ||
			      FUNC11(dp->dp2.di_ib, ufs2_zino.di_ib,
				UFS_NIADDR * sizeof(ufs2_daddr_t)) ||
			      dp->dp2.di_mode || dp->dp2.di_size)
				return (NULL);
			return (dp);
		}
		if (!FUNC7(dp))
			return (NULL);
		ndb = FUNC9(FUNC0(dp, di_size), sblock.fs_bsize);
		if (ndb < 0)
			return (NULL);
		if (mode == IFBLK || mode == IFCHR)
			ndb++;
		if (mode == IFLNK) {
			/*
			 * Fake ndb value so direct/indirect block checks below
			 * will detect any garbage after symlink string.
			 */
			if (FUNC0(dp, di_size) < (off_t)sblock.fs_maxsymlinklen) {
				ndb = FUNC9(FUNC0(dp, di_size),
				    sizeof(ufs2_daddr_t));
				if (ndb > UFS_NDADDR) {
					j = ndb - UFS_NDADDR;
					for (ndb = 1; j > 1; j--)
						ndb *= FUNC1(&sblock);
					ndb += UFS_NDADDR;
				}
			}
		}
		for (j = ndb; ndb < UFS_NDADDR && j < UFS_NDADDR; j++)
			if (FUNC0(dp, di_db[j]) != 0)
				return (NULL);
		for (j = 0, ndb -= UFS_NDADDR; ndb > 0; j++)
			ndb /= FUNC1(&sblock);
		for (; j < UFS_NIADDR; j++)
			if (FUNC0(dp, di_ib[j]) != 0)
				return (NULL);
	}
	return (dp);
}