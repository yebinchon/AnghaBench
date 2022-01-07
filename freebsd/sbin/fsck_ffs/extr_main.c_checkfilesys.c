
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef long uintmax_t ;
typedef double ufs2_daddr_t ;
struct statfs {char* f_mntfromname; int f_flags; char* f_mntonname; } ;
struct stat {int st_mode; } ;
struct iovec {int dummy; } ;
struct group {int gr_gid; } ;
struct dups {scalar_t__ dup; struct dups* next; } ;
typedef long intmax_t ;
typedef int errmsg ;
struct TYPE_13__ {int * il_stat; } ;
struct TYPE_12__ {scalar_t__ b_dirty; } ;
struct TYPE_10__ {int cs_nffree; int cs_nbfree; long cs_nifree; long cs_ndir; } ;
struct TYPE_11__ {int fs_flags; int fs_clean; int fs_frag; double fs_dsize; int fs_metackhash; scalar_t__ fs_magic; char* fs_fsmnt; int fs_ncg; void* fs_time; TYPE_1__ fs_cstotal; int fs_fsize; int fs_cssize; void* fs_mtime; } ;


 int CK_CYLGRP ;
 int CK_DIR ;
 int CK_INDIR ;
 int CK_INODE ;
 int CK_SUPERBLOCK ;
 int CLOCK_REALTIME_PRECISE ;
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
 int IOstats (char*) ;
 size_t MIBSIZE ;
 int MNT_RDONLY ;
 int MNT_ROOTFS ;
 int MNT_SOFTDEP ;
 int O_RDONLY ;
 scalar_t__ P_OSREL_CK_CYLGRP ;
 scalar_t__ P_OSREL_CK_DIR ;
 scalar_t__ P_OSREL_CK_INDIR ;
 scalar_t__ P_OSREL_CK_INODE ;
 scalar_t__ P_OSREL_CK_SUPERBLOCK ;
 int SBLOCKSIZE ;
 int S_ISDIR (int ) ;
 long UFS_ROOTINO ;
 int adjrefcnt ;
 scalar_t__ bkgrdcheck ;
 scalar_t__ bkgrdflag ;
 char* blockcheck (char*) ;
 int blwrite (int,char*,int ,int ) ;
 int build_iovec (struct iovec**,int*,char*,char*,int) ;
 char* cdevname ;
 int cgbase (TYPE_2__*,int ) ;
 int cgdmin (TYPE_2__*,int ) ;
 int cgsblock (TYPE_2__*,int) ;
 scalar_t__ chkdoreload (struct statfs*) ;
 scalar_t__ chmod (char*,int) ;
 scalar_t__ chown (char*,int,int ) ;
 scalar_t__ ckclean ;
 int ckfini (int) ;
 int ckhashadd ;
 int clock_gettime (int ,int *) ;
 int close (int ) ;
 long countdirs ;
 scalar_t__ cvtlevel ;
 scalar_t__ debug ;
 struct dups* duplist ;
 scalar_t__ errno ;
 int exit (int) ;
 int finalIOstats () ;
 int flush (int,TYPE_3__*) ;
 int free (char*) ;
 int fsbtodb (TYPE_2__*,int) ;
 int fsckinit () ;
 int fsmodified ;
 int fsreadfd ;
 int fsutilinit () ;
 int fswritefd ;
 struct group* getgrnam (char*) ;
 struct statfs* getmntpt (char*) ;
 scalar_t__ getosreldate () ;
 int gjournal_check (char*) ;
 scalar_t__ howmany (int ,int ) ;
 int inocleanup () ;
 TYPE_4__* inostathead ;
 double maxfsblock ;
 long maxino ;
 scalar_t__ mkdir (char*,int) ;
 struct dups* muldup ;
 long n_blks ;
 long n_files ;
 scalar_t__ nmount (struct iovec*,int,int) ;
 int open (char*,int ) ;
 int pass1 () ;
 int pass1b () ;
 int pass2 () ;
 int pass3 () ;
 int pass4 () ;
 int pass5 () ;
 int pfatal (char*,...) ;
 scalar_t__ preen ;
 int printf (char*,...) ;
 int pwarn (char*,...) ;
 scalar_t__ readsb (int ) ;
 scalar_t__ reply (char*) ;
 scalar_t__ rerun ;
 int resolved ;
 int restarts ;
 int sbdirty () ;
 TYPE_3__ sblk ;
 TYPE_2__ sblock ;
 int sblock_init () ;
 int setup (char*) ;
 scalar_t__ skipclean ;
 char* snapname ;
 int snprintf (char*,int,char*,char*) ;
 int startprog ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strerror (scalar_t__) ;
 scalar_t__ suj_check (char*) ;
 int sync () ;
 scalar_t__ sysctlnametomib (char*,int ,size_t*) ;
 void* time (int *) ;
 scalar_t__ unlink (char*) ;
 scalar_t__ usedsoftdep ;
 scalar_t__ wantrestart ;
 scalar_t__ yflag ;

__attribute__((used)) static int
checkfilesys(char *filesys)
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

 iov = ((void*)0);
 iovlen = 0;
 errmsg[0] = '\0';
 fsutilinit();
 fsckinit();

 cdevname = filesys;
 if (debug && ckclean)
  pwarn("starting\n");





 mntp = getmntpt(filesys);
 if (mntp != ((void*)0))
  filesys = mntp->f_mntfromname;
 else
  filesys = blockcheck(filesys);






 sblock_init();
 if (bkgrdcheck) {
  if ((fsreadfd = open(filesys, O_RDONLY)) < 0 || readsb(0) == 0)
   exit(3);
  close(fsreadfd);

  if (sblock.fs_flags & (FS_NEEDSFSCK | FS_SUJ))
   exit(4);
  if ((sblock.fs_flags & FS_DOSOFTDEP) == 0)
   exit(5);
  size = MIBSIZE;
  if (sysctlnametomib("vfs.ffs.adjrefcnt", adjrefcnt, &size) < 0)
   exit(6);
  if ((mntp == ((void*)0) && sblock.fs_clean == 1) ||
      (mntp != ((void*)0) && (sblock.fs_flags & FS_UNCLEAN) == 0))
   exit(7);
  exit(0);
 }
 if (ckclean && skipclean) {



  if ((fsreadfd = open(filesys, O_RDONLY)) < 0 || readsb(0) == 0)
   exit(3);
  close(fsreadfd);
  if ((sblock.fs_flags & FS_GJOURNAL) != 0) {


   if (sblock.fs_clean == 1) {
    pwarn("FILE SYSTEM CLEAN; SKIPPING CHECKS\n");
    exit(0);
   }
   if ((sblock.fs_flags & (FS_UNCLEAN | FS_NEEDSFSCK)) == 0) {
    gjournal_check(filesys);
    if (chkdoreload(mntp) == 0)
     exit(0);
    exit(4);
   } else {
    pfatal(
       "UNEXPECTED INCONSISTENCY, CANNOT RUN FAST FSCK\n");
   }
  }
 }







 if (bkgrdflag) {
  if (mntp == ((void*)0)) {
   bkgrdflag = 0;
   pfatal("NOT MOUNTED, CANNOT RUN IN BACKGROUND\n");
  } else if ((mntp->f_flags & MNT_SOFTDEP) == 0) {
   bkgrdflag = 0;
   pfatal(
     "NOT USING SOFT UPDATES, CANNOT RUN IN BACKGROUND\n");
  } else if ((mntp->f_flags & MNT_RDONLY) != 0) {
   bkgrdflag = 0;
   pfatal("MOUNTED READ-ONLY, CANNOT RUN IN BACKGROUND\n");
  } else if ((fsreadfd = open(filesys, O_RDONLY)) >= 0) {
   if (readsb(0) != 0) {
    if (sblock.fs_flags & (FS_NEEDSFSCK | FS_SUJ)) {
     bkgrdflag = 0;
     pfatal(
   "UNEXPECTED INCONSISTENCY, CANNOT RUN IN BACKGROUND\n");
    }
    if ((sblock.fs_flags & FS_UNCLEAN) == 0 &&
        skipclean && ckclean) {




     pwarn(
     "FILE SYSTEM CLEAN; SKIPPING CHECKS\n");
     goto clean;
    }
   }
   close(fsreadfd);
  }
  if (bkgrdflag) {
   snprintf(snapname, sizeof snapname, "%s/.snap",
       mntp->f_mntonname);
   if (stat(snapname, &snapdir) < 0) {
    if (errno != ENOENT) {
     bkgrdflag = 0;
     pfatal(
 "CANNOT FIND SNAPSHOT DIRECTORY %s: %s, CANNOT RUN IN BACKGROUND\n",
         snapname, strerror(errno));
    } else if ((grp = getgrnam("operator")) == ((void*)0) ||
        mkdir(snapname, 0770) < 0 ||
        chown(snapname, -1, grp->gr_gid) < 0 ||
        chmod(snapname, 0770) < 0) {
     bkgrdflag = 0;
     pfatal(
 "CANNOT CREATE SNAPSHOT DIRECTORY %s: %s, CANNOT RUN IN BACKGROUND\n",
         snapname, strerror(errno));
    }
   } else if (!S_ISDIR(snapdir.st_mode)) {
    bkgrdflag = 0;
    pfatal(
   "%s IS NOT A DIRECTORY, CANNOT RUN IN BACKGROUND\n",
        snapname);
   }
  }
  if (bkgrdflag) {
   snprintf(snapname, sizeof snapname,
       "%s/.snap/fsck_snapshot", mntp->f_mntonname);
   build_iovec(&iov, &iovlen, "fstype", "ffs", 4);
   build_iovec(&iov, &iovlen, "from", snapname,
       (size_t)-1);
   build_iovec(&iov, &iovlen, "fspath", mntp->f_mntonname,
       (size_t)-1);
   build_iovec(&iov, &iovlen, "errmsg", errmsg,
       sizeof(errmsg));
   build_iovec(&iov, &iovlen, "update", ((void*)0), 0);
   build_iovec(&iov, &iovlen, "snapshot", ((void*)0), 0);

   while (nmount(iov, iovlen, mntp->f_flags) < 0) {
    if (errno == EEXIST && unlink(snapname) == 0)
     continue;
    bkgrdflag = 0;
    pfatal("CANNOT CREATE SNAPSHOT %s: %s %s\n",
        snapname, strerror(errno), errmsg);
    break;
   }
   if (bkgrdflag != 0)
    filesys = snapname;
  }
 }

 switch (setup(filesys)) {
 case 0:
  if (preen)
   pfatal("CAN'T CHECK FILE SYSTEM.");
  return (0);
 case -1:
 clean:
  pwarn("clean, %ld free ", (long)(sblock.fs_cstotal.cs_nffree +
      sblock.fs_frag * sblock.fs_cstotal.cs_nbfree));
  printf("(%jd frags, %jd blocks, %.1f%% fragmentation)\n",
      (intmax_t)sblock.fs_cstotal.cs_nffree,
      (intmax_t)sblock.fs_cstotal.cs_nbfree,
      sblock.fs_cstotal.cs_nffree * 100.0 / sblock.fs_dsize);
  return (0);
 }



 if ((sblock.fs_flags & FS_SUJ) == FS_SUJ) {
  if ((sblock.fs_flags & FS_NEEDSFSCK) != FS_NEEDSFSCK && skipclean) {
   if (preen || reply("USE JOURNAL")) {
    if (suj_check(filesys) == 0) {
     printf("\n***** FILE SYSTEM MARKED CLEAN *****\n");
     if (chkdoreload(mntp) == 0)
      exit(0);
     exit(4);
    }
   }
   printf("** Skipping journal, falling through to full fsck\n\n");
  }






  sblock.fs_mtime = time(((void*)0));
  sbdirty();
  ofsmodified = fsmodified;
  flush(fswritefd, &sblk);
  fsmodified = ofsmodified;
 }





 if ((sblock.fs_flags & FS_METACKHASH) == 0)
  sblock.fs_metackhash = 0;






 ckhashadd = 0;
 if (preen == 0 && yflag == 0 && sblock.fs_magic != FS_UFS1_MAGIC &&
     fswritefd != -1 && getosreldate() >= P_OSREL_CK_CYLGRP) {
  if ((sblock.fs_metackhash & CK_CYLGRP) == 0 &&
      reply("ADD CYLINDER GROUP CHECK-HASH PROTECTION") != 0) {
   ckhashadd |= CK_CYLGRP;
   sblock.fs_metackhash |= CK_CYLGRP;
  }
  if ((sblock.fs_metackhash & CK_SUPERBLOCK) == 0 &&
      getosreldate() >= P_OSREL_CK_SUPERBLOCK &&
      reply("ADD SUPERBLOCK CHECK-HASH PROTECTION") != 0) {
   ckhashadd |= CK_SUPERBLOCK;
   sblock.fs_metackhash |= CK_SUPERBLOCK;
  }
  if ((sblock.fs_metackhash & CK_INODE) == 0 &&
      getosreldate() >= P_OSREL_CK_INODE &&
      reply("ADD INODE CHECK-HASH PROTECTION") != 0) {
   ckhashadd |= CK_INODE;
   sblock.fs_metackhash |= CK_INODE;
  }
  if (ckhashadd != 0) {
   sblock.fs_flags |= FS_METACKHASH;
   sbdirty();
  }
 }




 resolved = 1;



 if (preen == 0) {
  printf("** Last Mounted on %s\n", sblock.fs_fsmnt);
  if (mntp != ((void*)0) && mntp->f_flags & MNT_ROOTFS)
   printf("** Root file system\n");
  printf("** Phase 1 - Check Blocks and Sizes\n");
 }
 clock_gettime(CLOCK_REALTIME_PRECISE, &startprog);
 pass1();
 IOstats("Pass1");




 if (duplist) {
  if (preen || usedsoftdep)
   pfatal("INTERNAL ERROR: dups with %s%s%s",
       preen ? "-p" : "",
       (preen && usedsoftdep) ? " and " : "",
       usedsoftdep ? "softupdates" : "");
  printf("** Phase 1b - Rescan For More DUPS\n");
  pass1b();
  IOstats("Pass1b");
 }




 if (preen == 0)
  printf("** Phase 2 - Check Pathnames\n");
 pass2();
 IOstats("Pass2");




 if (preen == 0)
  printf("** Phase 3 - Check Connectivity\n");
 pass3();
 IOstats("Pass3");




 if (preen == 0)
  printf("** Phase 4 - Check Reference Counts\n");
 pass4();
 IOstats("Pass4");




 if (preen == 0)
  printf("** Phase 5 - Check Cyl groups\n");
 pass5();
 IOstats("Pass5");




 n_ffree = sblock.fs_cstotal.cs_nffree;
 n_bfree = sblock.fs_cstotal.cs_nbfree;
 files = maxino - UFS_ROOTINO - sblock.fs_cstotal.cs_nifree - n_files;
 blks = n_blks +
     sblock.fs_ncg * (cgdmin(&sblock, 0) - cgsblock(&sblock, 0));
 blks += cgsblock(&sblock, 0) - cgbase(&sblock, 0);
 blks += howmany(sblock.fs_cssize, sblock.fs_fsize);
 blks = maxfsblock - (n_ffree + sblock.fs_frag * n_bfree) - blks;
 if (bkgrdflag && (files > 0 || blks > 0)) {
  countdirs = sblock.fs_cstotal.cs_ndir - countdirs;
  pwarn("Reclaimed: %ld directories, %jd files, %jd fragments\n",
      countdirs, files - countdirs, blks);
 }
 pwarn("%ld files, %jd used, %ju free ",
     (long)n_files, (intmax_t)n_blks,
     (uintmax_t)n_ffree + sblock.fs_frag * n_bfree);
 printf("(%ju frags, %ju blocks, %.1f%% fragmentation)\n",
     (uintmax_t)n_ffree, (uintmax_t)n_bfree,
     n_ffree * 100.0 / sblock.fs_dsize);
 if (debug) {
  if (files < 0)
   printf("%jd inodes missing\n", -files);
  if (blks < 0)
   printf("%jd blocks missing\n", -blks);
  if (duplist != ((void*)0)) {
   printf("The following duplicate blocks remain:");
   for (dp = duplist; dp; dp = dp->next)
    printf(" %jd,", (intmax_t)dp->dup);
   printf("\n");
  }
 }
 duplist = (struct dups *)0;
 muldup = (struct dups *)0;
 inocleanup();
 if (fsmodified) {
  sblock.fs_time = time(((void*)0));
  sbdirty();
 }
 if (cvtlevel && sblk.b_dirty) {



  for (cylno = 0; cylno < sblock.fs_ncg; cylno++)
   blwrite(fswritefd, (char *)&sblock,
       fsbtodb(&sblock, cgsblock(&sblock, cylno)),
       SBLOCKSIZE);
 }
 if (rerun)
  resolved = 0;
 finalIOstats();




 if (bkgrdflag == 0 && mntp != ((void*)0) && (mntp->f_flags & MNT_RDONLY) == 0)
  resolved = 0;
 ckfini(resolved);

 for (cylno = 0; cylno < sblock.fs_ncg; cylno++)
  if (inostathead[cylno].il_stat != ((void*)0))
   free((char *)inostathead[cylno].il_stat);
 free((char *)inostathead);
 inostathead = ((void*)0);
 if (fsmodified && !preen)
  printf("\n***** FILE SYSTEM WAS MODIFIED *****\n");
 if (rerun) {
  if (wantrestart && (restarts++ < 10) &&
      (preen || reply("RESTART")))
   return (ERESTART);
  printf("\n***** PLEASE RERUN FSCK *****\n");
 }
 if (chkdoreload(mntp) != 0) {
  if (!fsmodified)
   return (0);
  if (!preen)
   printf("\n***** REBOOT NOW *****\n");
  sync();
  return (4);
 }
 return (rerun ? ERERUN : 0);
}
