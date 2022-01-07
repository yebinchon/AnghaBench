
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int f_blocks; int f_bsize; int f_frsize; int f_iosize; int f_bfree; int f_bavail; scalar_t__ f_fresvd; scalar_t__ f_bresvd; void* f_favail; void* f_ffree; void* f_files; } ;
struct rlimit {int rlim_cur; } ;
struct puffs_usermount {int dummy; } ;
struct dtfs_mount {int dtm_fsizes; void* dtm_nfiles; } ;
typedef int off_t ;


 void* NFILES ;
 int RLIMIT_DATA ;
 int ROUND (int,int) ;
 int getpagesize () ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int memset (struct statvfs*,int ,int) ;
 struct dtfs_mount* puffs_getspecific (struct puffs_usermount*) ;

int
dtfs_fs_statvfs(struct puffs_usermount *pu, struct statvfs *sbp)
{
 struct rlimit rlim;
 struct dtfs_mount *dtm;
 off_t btot, bfree;
 int pgsize;

 dtm = puffs_getspecific(pu);
 pgsize = getpagesize();
 memset(sbp, 0, sizeof(struct statvfs));






 if (getrlimit(RLIMIT_DATA, &rlim) == 0)
  btot = rlim.rlim_cur;
 else
  btot = 16*1024*1024;
 bfree = btot - dtm->dtm_fsizes;

 sbp->f_blocks = ROUND(btot, pgsize) / pgsize;
 sbp->f_files = NFILES;

 sbp->f_bsize = sbp->f_frsize = sbp->f_iosize = pgsize;
 sbp->f_bfree = sbp->f_bavail = ROUND(bfree, pgsize) / pgsize;
 sbp->f_ffree = sbp->f_favail = NFILES - dtm->dtm_nfiles;

 sbp->f_bresvd = sbp->f_fresvd = 0;

 return 0;
}
