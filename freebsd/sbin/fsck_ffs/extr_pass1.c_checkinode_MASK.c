#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {int di_extsize; scalar_t__* di_extb; scalar_t__ di_size; scalar_t__ di_mode; int /*<<< orphan*/  di_ib; int /*<<< orphan*/  di_db; } ;
struct TYPE_16__ {scalar_t__ di_size; scalar_t__ di_mode; int /*<<< orphan*/  di_ib; int /*<<< orphan*/  di_db; } ;
union dinode {TYPE_11__ dp2; TYPE_1__ dp1; } ;
typedef  long long uintmax_t ;
typedef  int ufs2_daddr_t ;
typedef  int /*<<< orphan*/  ufs1_daddr_t ;
typedef  int /*<<< orphan*/  u_long ;
struct inodesc {scalar_t__ id_blkno; int (* id_func ) (struct inodesc*) ;int id_entryno; scalar_t__ id_lballoc; void* id_number; int /*<<< orphan*/  id_numfrags; void* id_type; } ;
typedef  int off_t ;
typedef  int mode_t ;
typedef  void* ino_t ;
typedef  scalar_t__ dev_t ;
struct TYPE_21__ {int ino_linkcnt; void* ino_state; int /*<<< orphan*/  ino_type; } ;
struct TYPE_20__ {scalar_t__ fs_magic; int fs_bsize; int fs_maxfilesize; long long fs_fsize; int /*<<< orphan*/  fs_frag; scalar_t__ fs_maxsymlinklen; } ;
struct TYPE_19__ {int size; void* value; } ;
struct TYPE_18__ {int /*<<< orphan*/  di_ib; int /*<<< orphan*/  di_db; } ;
struct TYPE_17__ {int /*<<< orphan*/  di_ib; int /*<<< orphan*/  di_db; } ;

/* Variables and functions */
 void* ADDR ; 
 void* DCLEAR ; 
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,long long) ; 
 void* DSTATE ; 
 void* DZLINK ; 
 void* FCLEAR ; 
 void* FSTATE ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 scalar_t__ FS_UFS2_MAGIC ; 
 void* FZLINK ; 
 int IFBLK ; 
 int IFCHR ; 
 int IFDIR ; 
 int IFIFO ; 
 int IFLNK ; 
 int IFMT ; 
 int IFREG ; 
 int IFSOCK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MAXDIRSIZE ; 
 int /*<<< orphan*/  MIBSIZE ; 
 int FUNC3 (TYPE_5__*) ; 
 scalar_t__ NODEV ; 
 int SF_SNAPSHOT ; 
 void* SNAP ; 
 int STOP ; 
 int UFS_NDADDR ; 
 int UFS_NIADDR ; 
 int UFS_NXADDR ; 
 void* USTATE ; 
 int /*<<< orphan*/  adjblkcnt ; 
 scalar_t__ badblk ; 
 scalar_t__ bkgrdflag ; 
 int FUNC4 (TYPE_5__*,int) ; 
 int FUNC5 (long long) ; 
 int /*<<< orphan*/  FUNC6 (union dinode*,void*) ; 
 int /*<<< orphan*/  FUNC7 (union dinode*,struct inodesc*) ; 
 int /*<<< orphan*/  FUNC8 (union dinode*) ; 
 TYPE_4__ cmd ; 
 int /*<<< orphan*/  countdirs ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  di_blocks ; 
 int /*<<< orphan*/ * di_db ; 
 int /*<<< orphan*/  di_flags ; 
 int /*<<< orphan*/ * di_ib ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_nlink ; 
 int /*<<< orphan*/  di_rdev ; 
 int /*<<< orphan*/  di_size ; 
 scalar_t__ dupblk ; 
 int /*<<< orphan*/  FUNC9 (struct inodesc*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int) ; 
 scalar_t__ FUNC11 (union dinode*) ; 
 union dinode* FUNC12 (void*,int) ; 
 union dinode* FUNC13 (void*) ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (union dinode*) ; 
 TYPE_9__* FUNC16 (void*) ; 
 void* lastino ; 
 scalar_t__ FUNC17 (TYPE_5__*,int) ; 
 long long FUNC18 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  n_files ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ,long long,long long) ; 
 int FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,void*) ; 
 TYPE_5__ sblock ; 
 int /*<<< orphan*/  setsize ; 
 int FUNC26 (struct inodesc*) ; 
 int FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 TYPE_3__ ufs1_zino ; 
 TYPE_2__ ufs2_zino ; 

__attribute__((used)) static int
FUNC28(ino_t inumber, struct inodesc *idesc, int rebuildcg)
{
	union dinode *dp;
	off_t kernmaxfilesize;
	ufs2_daddr_t ndb;
	mode_t mode;
	uintmax_t fixsize;
	int j, ret, offset;

	if ((dp = FUNC12(inumber, rebuildcg)) == NULL)
		goto unknown;
	mode = FUNC0(dp, di_mode) & IFMT;
	if (mode == 0) {
		if ((sblock.fs_magic == FS_UFS1_MAGIC &&
		     (FUNC19(dp->dp1.di_db, ufs1_zino.di_db,
			UFS_NDADDR * sizeof(ufs1_daddr_t)) ||
		      FUNC19(dp->dp1.di_ib, ufs1_zino.di_ib,
			UFS_NIADDR * sizeof(ufs1_daddr_t)) ||
		      dp->dp1.di_mode || dp->dp1.di_size)) ||
		    (sblock.fs_magic == FS_UFS2_MAGIC &&
		     (FUNC19(dp->dp2.di_db, ufs2_zino.di_db,
			UFS_NDADDR * sizeof(ufs2_daddr_t)) ||
		      FUNC19(dp->dp2.di_ib, ufs2_zino.di_ib,
			UFS_NIADDR * sizeof(ufs2_daddr_t)) ||
		      dp->dp2.di_mode || dp->dp2.di_size))) {
			FUNC21("PARTIALLY ALLOCATED INODE I=%lu",
			    (u_long)inumber);
			if (FUNC24("CLEAR") == 1) {
				dp = FUNC13(inumber);
				FUNC8(dp);
				FUNC15(dp);
			}
		}
		FUNC16(inumber)->ino_state = USTATE;
		return (1);
	}
	lastino = inumber;
	/* This should match the file size limit in ffs_mountfs(). */
	if (sblock.fs_magic == FS_UFS1_MAGIC)
		kernmaxfilesize = (off_t)0x40000000 * sblock.fs_bsize - 1;
	else
		kernmaxfilesize = sblock.fs_maxfilesize;
	if (FUNC0(dp, di_size) > kernmaxfilesize ||
	    FUNC0(dp, di_size) > sblock.fs_maxfilesize ||
	    (mode == IFDIR && FUNC0(dp, di_size) > MAXDIRSIZE)) {
		if (debug)
			FUNC22("bad size %ju:", (uintmax_t)FUNC0(dp, di_size));
		goto unknown;
	}
	if (!preen && mode == IFMT && FUNC24("HOLD BAD BLOCK") == 1) {
		dp = FUNC13(inumber);
		FUNC1(dp, di_size, sblock.fs_fsize);
		FUNC1(dp, di_mode, IFREG|0600);
		FUNC15(dp);
	}
	if ((mode == IFBLK || mode == IFCHR || mode == IFIFO ||
	     mode == IFSOCK) && FUNC0(dp, di_size) != 0) {
		if (debug)
			FUNC22("bad special-file size %ju:",
			    (uintmax_t)FUNC0(dp, di_size));
		goto unknown;
	}
	if ((mode == IFBLK || mode == IFCHR) &&
	    (dev_t)FUNC0(dp, di_rdev) == NODEV) {
		if (debug)
			FUNC22("bad special-file rdev NODEV:");
		goto unknown;
	}
	ndb = FUNC14(FUNC0(dp, di_size), sblock.fs_bsize);
	if (ndb < 0) {
		if (debug)
			FUNC22("bad size %ju ndb %ju:",
				(uintmax_t)FUNC0(dp, di_size), (uintmax_t)ndb);
		goto unknown;
	}
	if (mode == IFBLK || mode == IFCHR)
		ndb++;
	if (mode == IFLNK) {
		/*
		 * Fake ndb value so direct/indirect block checks below
		 * will detect any garbage after symlink string.
		 */
		if (FUNC0(dp, di_size) < (off_t)sblock.fs_maxsymlinklen) {
			if (sblock.fs_magic == FS_UFS1_MAGIC)
				ndb = FUNC14(FUNC0(dp, di_size),
				    sizeof(ufs1_daddr_t));
			else
				ndb = FUNC14(FUNC0(dp, di_size),
				    sizeof(ufs2_daddr_t));
			if (ndb > UFS_NDADDR) {
				j = ndb - UFS_NDADDR;
				for (ndb = 1; j > 1; j--)
					ndb *= FUNC3(&sblock);
				ndb += UFS_NDADDR;
			}
		}
	}
	for (j = ndb; ndb < UFS_NDADDR && j < UFS_NDADDR; j++)
		if (FUNC0(dp, di_db[j]) != 0) {
			if (debug)
				FUNC22("bad direct addr[%d]: %ju\n", j,
				    (uintmax_t)FUNC0(dp, di_db[j]));
			goto unknown;
		}
	for (j = 0, ndb -= UFS_NDADDR; ndb > 0; j++)
		ndb /= FUNC3(&sblock);
	for (; j < UFS_NIADDR; j++)
		if (FUNC0(dp, di_ib[j]) != 0) {
			if (debug)
				FUNC22("bad indirect addr: %ju\n",
				    (uintmax_t)FUNC0(dp, di_ib[j]));
			goto unknown;
		}
	if (FUNC11(dp) == 0)
		goto unknown;
	n_files++;
	FUNC16(inumber)->ino_linkcnt = FUNC0(dp, di_nlink);
	if (mode == IFDIR) {
		if (FUNC0(dp, di_size) == 0)
			FUNC16(inumber)->ino_state = DCLEAR;
		else if (FUNC0(dp, di_nlink) <= 0)
			FUNC16(inumber)->ino_state = DZLINK;
		else
			FUNC16(inumber)->ino_state = DSTATE;
		FUNC6(dp, inumber);
		countdirs++;
	} else if (FUNC0(dp, di_nlink) <= 0)
		FUNC16(inumber)->ino_state = FZLINK;
	else
		FUNC16(inumber)->ino_state = FSTATE;
	FUNC16(inumber)->ino_type = FUNC2(mode);
	badblk = dupblk = 0;
	idesc->id_number = inumber;
	if (FUNC0(dp, di_flags) & SF_SNAPSHOT)
		idesc->id_type = SNAP;
	else
		idesc->id_type = ADDR;
	(void)FUNC7(dp, idesc);
	if (sblock.fs_magic == FS_UFS2_MAGIC && dp->dp2.di_extsize > 0) {
		idesc->id_type = ADDR;
		ndb = FUNC14(dp->dp2.di_extsize, sblock.fs_bsize);
		for (j = 0; j < UFS_NXADDR; j++) {
			if (--ndb == 0 &&
			    (offset = FUNC4(&sblock, dp->dp2.di_extsize)) != 0)
				idesc->id_numfrags = FUNC20(&sblock,
				    FUNC10(&sblock, offset));
			else
				idesc->id_numfrags = sblock.fs_frag;
			if (dp->dp2.di_extb[j] == 0)
				continue;
			idesc->id_blkno = dp->dp2.di_extb[j];
			ret = (*idesc->id_func)(idesc);
			if (ret & STOP)
				break;
		}
	}
	if (sblock.fs_magic == FS_UFS2_MAGIC)
		FUNC9(idesc, &dp->dp2);
	idesc->id_entryno *= FUNC5(sblock.fs_fsize);
	if (FUNC0(dp, di_blocks) != idesc->id_entryno) {
		FUNC23("INCORRECT BLOCK COUNT I=%lu (%ju should be %ju)",
		    (u_long)inumber, (uintmax_t)FUNC0(dp, di_blocks),
		    (uintmax_t)idesc->id_entryno);
		if (preen)
			FUNC22(" (CORRECTED)\n");
		else if (FUNC24("CORRECT") == 0)
			return (1);
		if (bkgrdflag == 0) {
			dp = FUNC13(inumber);
			FUNC1(dp, di_blocks, idesc->id_entryno);
			FUNC15(dp);
		} else {
			cmd.value = idesc->id_number;
			cmd.size = idesc->id_entryno - FUNC0(dp, di_blocks);
			if (debug)
				FUNC22("adjblkcnt ino %ju amount %lld\n",
				    (uintmax_t)cmd.value, (long long)cmd.size);
			if (FUNC27(adjblkcnt, MIBSIZE, 0, 0,
			    &cmd, sizeof cmd) == -1)
				FUNC25("ADJUST INODE BLOCK COUNT", cmd.value);
		}
	}
	/*
	 * Soft updates will always ensure that the file size is correct
	 * for files that contain only direct block pointers. However
	 * soft updates does not roll back sizes for files with indirect
	 * blocks that it has set to unallocated because their contents
	 * have not yet been written to disk. Hence, the file can appear
	 * to have a hole at its end because the block pointer has been
	 * rolled back to zero. Thus, id_lballoc tracks the last allocated
	 * block in the file. Here, for files that extend into indirect
	 * blocks, we check for a size past the last allocated block of
	 * the file and if that is found, shorten the file to reference
	 * the last allocated block to avoid having it reference a hole
	 * at its end.
	 */
	if (FUNC0(dp, di_size) > UFS_NDADDR * sblock.fs_bsize &&
	    idesc->id_lballoc < FUNC17(&sblock, FUNC0(dp, di_size) - 1)) {
		fixsize = FUNC18(&sblock, idesc->id_lballoc + 1);
		FUNC23("INODE %lu: FILE SIZE %ju BEYOND END OF ALLOCATED FILE, "
		      "SIZE SHOULD BE %ju", (u_long)inumber,
		      (uintmax_t)FUNC0(dp, di_size), fixsize);
		if (preen)
			FUNC22(" (ADJUSTED)\n");
		else if (FUNC24("ADJUST") == 0)
			return (1);
		if (bkgrdflag == 0) {
			dp = FUNC13(inumber);
			FUNC1(dp, di_size, fixsize);
			FUNC15(dp);
		} else {
			cmd.value = idesc->id_number;
			cmd.size = fixsize;
			if (debug)
				FUNC22("setsize ino %ju size set to %ju\n",
				    (uintmax_t)cmd.value, (uintmax_t)cmd.size);
			if (FUNC27(setsize, MIBSIZE, 0, 0,
			    &cmd, sizeof cmd) == -1)
				FUNC25("SET INODE SIZE", cmd.value);
		}

	}
	return (1);
unknown:
	FUNC21("UNKNOWN FILE TYPE I=%lu", (u_long)inumber);
	FUNC16(inumber)->ino_state = FCLEAR;
	if (FUNC24("CLEAR") == 1) {
		FUNC16(inumber)->ino_state = USTATE;
		dp = FUNC13(inumber);
		FUNC8(dp);
		FUNC15(dp);
	}
	return (1);
}