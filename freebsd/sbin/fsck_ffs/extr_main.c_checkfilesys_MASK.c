#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  long uintmax_t ;
typedef  double ufs2_daddr_t ;
struct statfs {char* f_mntfromname; int f_flags; char* f_mntonname; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct iovec {int dummy; } ;
struct group {int /*<<< orphan*/  gr_gid; } ;
struct dups {scalar_t__ dup; struct dups* next; } ;
typedef  long intmax_t ;
typedef  int /*<<< orphan*/  errmsg ;
struct TYPE_13__ {int /*<<< orphan*/ * il_stat; } ;
struct TYPE_12__ {scalar_t__ b_dirty; } ;
struct TYPE_10__ {int cs_nffree; int cs_nbfree; long cs_nifree; long cs_ndir; } ;
struct TYPE_11__ {int fs_flags; int fs_clean; int fs_frag; double fs_dsize; int fs_metackhash; scalar_t__ fs_magic; char* fs_fsmnt; int fs_ncg; void* fs_time; TYPE_1__ fs_cstotal; int /*<<< orphan*/  fs_fsize; int /*<<< orphan*/  fs_cssize; void* fs_mtime; } ;

/* Variables and functions */
 int CK_CYLGRP ; 
 int CK_DIR ; 
 int CK_INDIR ; 
 int CK_INODE ; 
 int CK_SUPERBLOCK ; 
 int /*<<< orphan*/  CLOCK_REALTIME_PRECISE ; 
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 int ERERUN ; 
 int ERESTART ; 
 int FS_DOSOFTDEP ; 
 int FS_GJOURNAL ; 
 int FS_METACKHASH ; 
 int FS_NEEDSFSCK ; 
 int FS_SUJ ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 int FS_UNCLEAN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t MIBSIZE ; 
 int MNT_RDONLY ; 
 int MNT_ROOTFS ; 
 int MNT_SOFTDEP ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ P_OSREL_CK_CYLGRP ; 
 scalar_t__ P_OSREL_CK_DIR ; 
 scalar_t__ P_OSREL_CK_INDIR ; 
 scalar_t__ P_OSREL_CK_INODE ; 
 scalar_t__ P_OSREL_CK_SUPERBLOCK ; 
 int /*<<< orphan*/  SBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 long UFS_ROOTINO ; 
 int /*<<< orphan*/  adjrefcnt ; 
 scalar_t__ bkgrdcheck ; 
 scalar_t__ bkgrdflag ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iovec**,int*,char*,char*,int) ; 
 char* cdevname ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int) ; 
 scalar_t__ FUNC8 (struct statfs*) ; 
 scalar_t__ FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ ckclean ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int ckhashadd ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 long countdirs ; 
 scalar_t__ cvtlevel ; 
 scalar_t__ debug ; 
 struct dups* duplist ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int fsmodified ; 
 int /*<<< orphan*/  fsreadfd ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int fswritefd ; 
 struct group* FUNC21 (char*) ; 
 struct statfs* FUNC22 (char*) ; 
 scalar_t__ FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 TYPE_4__* inostathead ; 
 double maxfsblock ; 
 long maxino ; 
 scalar_t__ FUNC27 (char*,int) ; 
 struct dups* muldup ; 
 long n_blks ; 
 long n_files ; 
 scalar_t__ FUNC28 (struct iovec*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (char*,...) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC37 (char*,...) ; 
 int /*<<< orphan*/  FUNC38 (char*,...) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC40 (char*) ; 
 scalar_t__ rerun ; 
 int resolved ; 
 int /*<<< orphan*/  restarts ; 
 int /*<<< orphan*/  FUNC41 () ; 
 TYPE_3__ sblk ; 
 TYPE_2__ sblock ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int FUNC43 (char*) ; 
 scalar_t__ skipclean ; 
 char* snapname ; 
 int /*<<< orphan*/  FUNC44 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  startprog ; 
 scalar_t__ FUNC45 (char*,struct stat*) ; 
 char* FUNC46 (scalar_t__) ; 
 scalar_t__ FUNC47 (char*) ; 
 int /*<<< orphan*/  FUNC48 () ; 
 scalar_t__ FUNC49 (char*,int /*<<< orphan*/ ,size_t*) ; 
 void* FUNC50 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC51 (char*) ; 
 scalar_t__ usedsoftdep ; 
 scalar_t__ wantrestart ; 
 scalar_t__ yflag ; 

__attribute__((used)) static int
FUNC52(char *filesys)
{
	ufs2_daddr_t n_ffree, n_bfree;
	struct dups *dp;
	struct statfs *mntp;
	struct stat snapdir;
	struct group *grp;
	struct iovec *iov;
	char errmsg[255];
	int ofsmodified;
	int iovlen;
	int cylno;
	intmax_t blks, files;
	size_t size;

	iov = NULL;
	iovlen = 0;
	errmsg[0] = '\0';
	FUNC20();
	FUNC19();

	cdevname = filesys;
	if (debug && ckclean)
		FUNC38("starting\n");
	/*
	 * Make best effort to get the disk name. Check first to see
	 * if it is listed among the mounted file systems. Failing that
	 * check to see if it is listed in /etc/fstab.
	 */
	mntp = FUNC22(filesys);
	if (mntp != NULL)
		filesys = mntp->f_mntfromname;
	else
		filesys = FUNC2(filesys);
	/*
	 * If -F flag specified, check to see whether a background check
	 * is possible and needed. If possible and needed, exit with
	 * status zero. Otherwise exit with status non-zero. A non-zero
	 * exit status will cause a foreground check to be run.
	 */
	FUNC42();
	if (bkgrdcheck) {
		if ((fsreadfd = FUNC29(filesys, O_RDONLY)) < 0 || FUNC39(0) == 0)
			FUNC14(3);	/* Cannot read superblock */
		FUNC13(fsreadfd);
		/* Earlier background failed or journaled */
		if (sblock.fs_flags & (FS_NEEDSFSCK | FS_SUJ))
			FUNC14(4);
		if ((sblock.fs_flags & FS_DOSOFTDEP) == 0)
			FUNC14(5);	/* Not running soft updates */
		size = MIBSIZE;
		if (FUNC49("vfs.ffs.adjrefcnt", adjrefcnt, &size) < 0)
			FUNC14(6);	/* Lacks kernel support */
		if ((mntp == NULL && sblock.fs_clean == 1) ||
		    (mntp != NULL && (sblock.fs_flags & FS_UNCLEAN) == 0))
			FUNC14(7);	/* Filesystem clean, report it now */
		FUNC14(0);
	}
	if (ckclean && skipclean) {
		/*
		 * If file system is gjournaled, check it here.
		 */
		if ((fsreadfd = FUNC29(filesys, O_RDONLY)) < 0 || FUNC39(0) == 0)
			FUNC14(3);	/* Cannot read superblock */
		FUNC13(fsreadfd);
		if ((sblock.fs_flags & FS_GJOURNAL) != 0) {
			//printf("GJournaled file system detected on %s.\n",
			//    filesys);
			if (sblock.fs_clean == 1) {
				FUNC38("FILE SYSTEM CLEAN; SKIPPING CHECKS\n");
				FUNC14(0);
			}
			if ((sblock.fs_flags & (FS_UNCLEAN | FS_NEEDSFSCK)) == 0) {
				FUNC24(filesys);
				if (FUNC8(mntp) == 0)
					FUNC14(0);
				FUNC14(4);
			} else {
				FUNC36(
			    "UNEXPECTED INCONSISTENCY, CANNOT RUN FAST FSCK\n");
			}
		}
	}
	/*
	 * If we are to do a background check:
	 *	Get the mount point information of the file system
	 *	create snapshot file
	 *	return created snapshot file
	 *	if not found, clear bkgrdflag and proceed with normal fsck
	 */
	if (bkgrdflag) {
		if (mntp == NULL) {
			bkgrdflag = 0;
			FUNC36("NOT MOUNTED, CANNOT RUN IN BACKGROUND\n");
		} else if ((mntp->f_flags & MNT_SOFTDEP) == 0) {
			bkgrdflag = 0;
			FUNC36(
			  "NOT USING SOFT UPDATES, CANNOT RUN IN BACKGROUND\n");
		} else if ((mntp->f_flags & MNT_RDONLY) != 0) {
			bkgrdflag = 0;
			FUNC36("MOUNTED READ-ONLY, CANNOT RUN IN BACKGROUND\n");
		} else if ((fsreadfd = FUNC29(filesys, O_RDONLY)) >= 0) {
			if (FUNC39(0) != 0) {
				if (sblock.fs_flags & (FS_NEEDSFSCK | FS_SUJ)) {
					bkgrdflag = 0;
					FUNC36(
			"UNEXPECTED INCONSISTENCY, CANNOT RUN IN BACKGROUND\n");
				}
				if ((sblock.fs_flags & FS_UNCLEAN) == 0 &&
				    skipclean && ckclean) {
					/*
					 * file system is clean;
					 * skip snapshot and report it clean
					 */
					FUNC38(
					"FILE SYSTEM CLEAN; SKIPPING CHECKS\n");
					goto clean;
				}
			}
			FUNC13(fsreadfd);
		}
		if (bkgrdflag) {
			FUNC44(snapname, sizeof snapname, "%s/.snap",
			    mntp->f_mntonname);
			if (FUNC45(snapname, &snapdir) < 0) {
				if (errno != ENOENT) {
					bkgrdflag = 0;
					FUNC36(
	"CANNOT FIND SNAPSHOT DIRECTORY %s: %s, CANNOT RUN IN BACKGROUND\n",
					    snapname, FUNC46(errno));
				} else if ((grp = FUNC21("operator")) == NULL ||
					   FUNC27(snapname, 0770) < 0 ||
					   FUNC10(snapname, -1, grp->gr_gid) < 0 ||
					   FUNC9(snapname, 0770) < 0) {
					bkgrdflag = 0;
					FUNC36(
	"CANNOT CREATE SNAPSHOT DIRECTORY %s: %s, CANNOT RUN IN BACKGROUND\n",
					    snapname, FUNC46(errno));
				}
			} else if (!FUNC1(snapdir.st_mode)) {
				bkgrdflag = 0;
				FUNC36(
			"%s IS NOT A DIRECTORY, CANNOT RUN IN BACKGROUND\n",
				    snapname);
			}
		}
		if (bkgrdflag) {
			FUNC44(snapname, sizeof snapname,
			    "%s/.snap/fsck_snapshot", mntp->f_mntonname);
			FUNC4(&iov, &iovlen, "fstype", "ffs", 4);
			FUNC4(&iov, &iovlen, "from", snapname,
			    (size_t)-1);
			FUNC4(&iov, &iovlen, "fspath", mntp->f_mntonname,
			    (size_t)-1);
			FUNC4(&iov, &iovlen, "errmsg", errmsg,
			    sizeof(errmsg));
			FUNC4(&iov, &iovlen, "update", NULL, 0);
			FUNC4(&iov, &iovlen, "snapshot", NULL, 0);

			while (FUNC28(iov, iovlen, mntp->f_flags) < 0) {
				if (errno == EEXIST && FUNC51(snapname) == 0)
					continue;
				bkgrdflag = 0;
				FUNC36("CANNOT CREATE SNAPSHOT %s: %s %s\n",
				    snapname, FUNC46(errno), errmsg);
				break;
			}
			if (bkgrdflag != 0)
				filesys = snapname;
		}
	}

	switch (FUNC43(filesys)) {
	case 0:
		if (preen)
			FUNC36("CAN'T CHECK FILE SYSTEM.");
		return (0);
	case -1:
	clean:
		FUNC38("clean, %ld free ", (long)(sblock.fs_cstotal.cs_nffree +
		    sblock.fs_frag * sblock.fs_cstotal.cs_nbfree));
		FUNC37("(%jd frags, %jd blocks, %.1f%% fragmentation)\n",
		    (intmax_t)sblock.fs_cstotal.cs_nffree,
		    (intmax_t)sblock.fs_cstotal.cs_nbfree,
		    sblock.fs_cstotal.cs_nffree * 100.0 / sblock.fs_dsize);
		return (0);
	}
	/*
	 * Determine if we can and should do journal recovery.
	 */
	if ((sblock.fs_flags & FS_SUJ) == FS_SUJ) {
		if ((sblock.fs_flags & FS_NEEDSFSCK) != FS_NEEDSFSCK && skipclean) {
			if (preen || FUNC40("USE JOURNAL")) {
				if (FUNC47(filesys) == 0) {
					FUNC37("\n***** FILE SYSTEM MARKED CLEAN *****\n");
					if (FUNC8(mntp) == 0)
						FUNC14(0);
					FUNC14(4);
				}
			}
			FUNC37("** Skipping journal, falling through to full fsck\n\n");
		}
		/*
		 * Write the superblock so we don't try to recover the
		 * journal on another pass. If this is the only change
		 * to the filesystem, we do not want it to be called
		 * out as modified.
		 */
		sblock.fs_mtime = FUNC50(NULL);
		FUNC41();
		ofsmodified = fsmodified;
		FUNC16(fswritefd, &sblk);
		fsmodified = ofsmodified;
	}
	/*
	 * If the filesystem was run on an old kernel that did not
	 * support check hashes, clear the check-hash flags so that
	 * we do not try to verify them.
	 */
	if ((sblock.fs_flags & FS_METACKHASH) == 0)
		sblock.fs_metackhash = 0;
	/*
	 * If we are running on a kernel that can provide check hashes
	 * that are not yet enabled for the filesystem and we are
	 * running manually without the -y flag, offer to add any
	 * supported check hashes that are not already enabled.
	 */
	ckhashadd = 0;
	if (preen == 0 && yflag == 0 && sblock.fs_magic != FS_UFS1_MAGIC &&
	    fswritefd != -1 && FUNC23() >= P_OSREL_CK_CYLGRP) {
		if ((sblock.fs_metackhash & CK_CYLGRP) == 0 &&
		    FUNC40("ADD CYLINDER GROUP CHECK-HASH PROTECTION") != 0) {
			ckhashadd |= CK_CYLGRP;
			sblock.fs_metackhash |= CK_CYLGRP;
		}
		if ((sblock.fs_metackhash & CK_SUPERBLOCK) == 0 &&
		    FUNC23() >= P_OSREL_CK_SUPERBLOCK &&
		    FUNC40("ADD SUPERBLOCK CHECK-HASH PROTECTION") != 0) {
			ckhashadd |= CK_SUPERBLOCK;
			sblock.fs_metackhash |= CK_SUPERBLOCK;
		}
		if ((sblock.fs_metackhash & CK_INODE) == 0 &&
		    FUNC23() >= P_OSREL_CK_INODE &&
		    FUNC40("ADD INODE CHECK-HASH PROTECTION") != 0) {
			ckhashadd |= CK_INODE;
			sblock.fs_metackhash |= CK_INODE;
		}
#ifdef notyet
		if ((sblock.fs_metackhash & CK_INDIR) == 0 &&
		    getosreldate() >= P_OSREL_CK_INDIR &&
		    reply("ADD INDIRECT BLOCK CHECK-HASH PROTECTION") != 0) {
			ckhashadd |= CK_INDIR;
			sblock.fs_metackhash |= CK_INDIR;
		}
		if ((sblock.fs_metackhash & CK_DIR) == 0 &&
		    getosreldate() >= P_OSREL_CK_DIR &&
		    reply("ADD DIRECTORY CHECK-HASH PROTECTION") != 0) {
			ckhashadd |= CK_DIR;
			sblock.fs_metackhash |= CK_DIR;
		}
#endif /* notyet */
		if (ckhashadd != 0) {
			sblock.fs_flags |= FS_METACKHASH;
			FUNC41();
		}
	}
	/*
	 * Cleared if any questions answered no. Used to decide if
	 * the superblock should be marked clean.
	 */
	resolved = 1;
	/*
	 * 1: scan inodes tallying blocks used
	 */
	if (preen == 0) {
		FUNC37("** Last Mounted on %s\n", sblock.fs_fsmnt);
		if (mntp != NULL && mntp->f_flags & MNT_ROOTFS)
			FUNC37("** Root file system\n");
		FUNC37("** Phase 1 - Check Blocks and Sizes\n");
	}
	FUNC12(CLOCK_REALTIME_PRECISE, &startprog);
	FUNC30();
	FUNC0("Pass1");

	/*
	 * 1b: locate first references to duplicates, if any
	 */
	if (duplist) {
		if (preen || usedsoftdep)
			FUNC36("INTERNAL ERROR: dups with %s%s%s",
			    preen ? "-p" : "",
			    (preen && usedsoftdep) ? " and " : "",
			    usedsoftdep ? "softupdates" : "");
		FUNC37("** Phase 1b - Rescan For More DUPS\n");
		FUNC31();
		FUNC0("Pass1b");
	}

	/*
	 * 2: traverse directories from root to mark all connected directories
	 */
	if (preen == 0)
		FUNC37("** Phase 2 - Check Pathnames\n");
	FUNC32();
	FUNC0("Pass2");

	/*
	 * 3: scan inodes looking for disconnected directories
	 */
	if (preen == 0)
		FUNC37("** Phase 3 - Check Connectivity\n");
	FUNC33();
	FUNC0("Pass3");

	/*
	 * 4: scan inodes looking for disconnected files; check reference counts
	 */
	if (preen == 0)
		FUNC37("** Phase 4 - Check Reference Counts\n");
	FUNC34();
	FUNC0("Pass4");

	/*
	 * 5: check and repair resource counts in cylinder groups
	 */
	if (preen == 0)
		FUNC37("** Phase 5 - Check Cyl groups\n");
	FUNC35();
	FUNC0("Pass5");

	/*
	 * print out summary statistics
	 */
	n_ffree = sblock.fs_cstotal.cs_nffree;
	n_bfree = sblock.fs_cstotal.cs_nbfree;
	files = maxino - UFS_ROOTINO - sblock.fs_cstotal.cs_nifree - n_files;
	blks = n_blks +
	    sblock.fs_ncg * (FUNC6(&sblock, 0) - FUNC7(&sblock, 0));
	blks += FUNC7(&sblock, 0) - FUNC5(&sblock, 0);
	blks += FUNC25(sblock.fs_cssize, sblock.fs_fsize);
	blks = maxfsblock - (n_ffree + sblock.fs_frag * n_bfree) - blks;
	if (bkgrdflag && (files > 0 || blks > 0)) {
		countdirs = sblock.fs_cstotal.cs_ndir - countdirs;
		FUNC38("Reclaimed: %ld directories, %jd files, %jd fragments\n",
		    countdirs, files - countdirs, blks);
	}
	FUNC38("%ld files, %jd used, %ju free ",
	    (long)n_files, (intmax_t)n_blks,
	    (uintmax_t)n_ffree + sblock.fs_frag * n_bfree);
	FUNC37("(%ju frags, %ju blocks, %.1f%% fragmentation)\n",
	    (uintmax_t)n_ffree, (uintmax_t)n_bfree,
	    n_ffree * 100.0 / sblock.fs_dsize);
	if (debug) {
		if (files < 0)
			FUNC37("%jd inodes missing\n", -files);
		if (blks < 0)
			FUNC37("%jd blocks missing\n", -blks);
		if (duplist != NULL) {
			FUNC37("The following duplicate blocks remain:");
			for (dp = duplist; dp; dp = dp->next)
				FUNC37(" %jd,", (intmax_t)dp->dup);
			FUNC37("\n");
		}
	}
	duplist = (struct dups *)0;
	muldup = (struct dups *)0;
	FUNC26();
	if (fsmodified) {
		sblock.fs_time = FUNC50(NULL);
		FUNC41();
	}
	if (cvtlevel && sblk.b_dirty) {
		/*
		 * Write out the duplicate super blocks
		 */
		for (cylno = 0; cylno < sblock.fs_ncg; cylno++)
			FUNC3(fswritefd, (char *)&sblock,
			    FUNC18(&sblock, FUNC7(&sblock, cylno)),
			    SBLOCKSIZE);
	}
	if (rerun)
		resolved = 0;
	FUNC15();

	/*
	 * Check to see if the file system is mounted read-write.
	 */
	if (bkgrdflag == 0 && mntp != NULL && (mntp->f_flags & MNT_RDONLY) == 0)
		resolved = 0;
	FUNC11(resolved);

	for (cylno = 0; cylno < sblock.fs_ncg; cylno++)
		if (inostathead[cylno].il_stat != NULL)
			FUNC17((char *)inostathead[cylno].il_stat);
	FUNC17((char *)inostathead);
	inostathead = NULL;
	if (fsmodified && !preen)
		FUNC37("\n***** FILE SYSTEM WAS MODIFIED *****\n");
	if (rerun) {
		if (wantrestart && (restarts++ < 10) &&
		    (preen || FUNC40("RESTART")))
			return (ERESTART);
		FUNC37("\n***** PLEASE RERUN FSCK *****\n");
	}
	if (FUNC8(mntp) != 0) {
		if (!fsmodified)
			return (0);
		if (!preen)
			FUNC37("\n***** REBOOT NOW *****\n");
		FUNC48();
		return (4);
	}
	return (rerun ? ERERUN : 0);
}