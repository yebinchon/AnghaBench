#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
union dinode {int /*<<< orphan*/  dp2; int /*<<< orphan*/  dp1; } ;
typedef  scalar_t__ ufs2_daddr_t ;
struct inodesc {scalar_t__ id_fix; int id_lbn; int id_lballoc; int id_level; int id_filesize; scalar_t__ id_type; int id_blkno; int (* id_func ) (struct inodesc*) ;int /*<<< orphan*/  id_number; int /*<<< orphan*/  id_numfrags; scalar_t__ id_entryno; } ;
typedef  int off_t ;
typedef  int mode_t ;
struct TYPE_6__ {scalar_t__ fs_magic; int fs_bsize; int /*<<< orphan*/  fs_frag; scalar_t__ fs_maxsymlinklen; } ;

/* Variables and functions */
 scalar_t__ BT_LEVEL1 ; 
 scalar_t__ DATA ; 
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ DONTKNOW ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 int IFBLK ; 
 int IFCHR ; 
 int IFLNK ; 
 int IFMT ; 
 scalar_t__ IGNORE ; 
 int KEEPON ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int FUNC2 (TYPE_1__*) ; 
 int STOP ; 
 int UFS_NDADDR ; 
 int UFS_NIADDR ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * di_db ; 
 int /*<<< orphan*/ * di_ib ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_size ; 
 int FUNC4 (struct inodesc*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 union dinode* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int FUNC9 (struct inodesc*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (union dinode*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (char*) ; 
 int rerun ; 
 TYPE_1__ sblock ; 
 int FUNC15 (struct inodesc*) ; 

int
FUNC16(union dinode *dp, struct inodesc *idesc)
{
	off_t remsize, sizepb;
	int i, offset, ret;
	union dinode dino;
	ufs2_daddr_t ndb;
	mode_t mode;
	char pathbuf[MAXPATHLEN + 1];

	if (idesc->id_fix != IGNORE)
		idesc->id_fix = DONTKNOW;
	idesc->id_lbn = -1;
	idesc->id_lballoc = -1;
	idesc->id_level = 0;
	idesc->id_entryno = 0;
	idesc->id_filesize = FUNC0(dp, di_size);
	mode = FUNC0(dp, di_mode) & IFMT;
	if (mode == IFBLK || mode == IFCHR || (mode == IFLNK &&
	    FUNC0(dp, di_size) < (unsigned)sblock.fs_maxsymlinklen))
		return (KEEPON);
	if (sblock.fs_magic == FS_UFS1_MAGIC)
		dino.dp1 = dp->dp1;
	else
		dino.dp2 = dp->dp2;
	ndb = FUNC8(FUNC0(&dino, di_size), sblock.fs_bsize);
	for (i = 0; i < UFS_NDADDR; i++) {
		idesc->id_lbn++;
		if (--ndb == 0 &&
		    (offset = FUNC3(&sblock, FUNC0(&dino, di_size))) != 0)
			idesc->id_numfrags =
				FUNC11(&sblock, FUNC5(&sblock, offset));
		else
			idesc->id_numfrags = sblock.fs_frag;
		if (FUNC0(&dino, di_db[i]) == 0) {
			if (idesc->id_type == DATA && ndb >= 0) {
				/* An empty block in a directory XXX */
				FUNC6(pathbuf, idesc->id_number,
						idesc->id_number);
				FUNC12("DIRECTORY %s: CONTAINS EMPTY BLOCKS",
					pathbuf);
				if (FUNC14("ADJUST LENGTH") == 1) {
					dp = FUNC7(idesc->id_number);
					FUNC1(dp, di_size,
					    i * sblock.fs_bsize);
					FUNC13(
					    "YOU MUST RERUN FSCK AFTERWARDS\n");
					rerun = 1;
					FUNC10(dp);

				}
			}
			continue;
		}
		idesc->id_blkno = FUNC0(&dino, di_db[i]);
		if (idesc->id_type != DATA)
			ret = (*idesc->id_func)(idesc);
		else
			ret = FUNC4(idesc);
		if (ret & STOP)
			return (ret);
	}
	idesc->id_numfrags = sblock.fs_frag;
	remsize = FUNC0(&dino, di_size) - sblock.fs_bsize * UFS_NDADDR;
	sizepb = sblock.fs_bsize;
	for (i = 0; i < UFS_NIADDR; i++) {
		sizepb *= FUNC2(&sblock);
		idesc->id_level = i + 1;
		if (FUNC0(&dino, di_ib[i])) {
			idesc->id_blkno = FUNC0(&dino, di_ib[i]);
			ret = FUNC9(idesc, remsize, BT_LEVEL1 + i);
			if (ret & STOP)
				return (ret);
		} else if (remsize > 0) {
			idesc->id_lbn += sizepb / sblock.fs_bsize;
			if (idesc->id_type == DATA) {
				/* An empty block in a directory XXX */
				FUNC6(pathbuf, idesc->id_number,
						idesc->id_number);
				FUNC12("DIRECTORY %s: CONTAINS EMPTY BLOCKS",
					pathbuf);
				if (FUNC14("ADJUST LENGTH") == 1) {
					dp = FUNC7(idesc->id_number);
					FUNC1(dp, di_size,
					    FUNC0(dp, di_size) - remsize);
					remsize = 0;
					FUNC13(
					    "YOU MUST RERUN FSCK AFTERWARDS\n");
					rerun = 1;
					FUNC10(dp);
					break;
				}
			}
		}
		remsize -= sizepb;
	}
	return (KEEPON);
}