
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fs {int fs_metackhash; int fs_cgsize; } ;
struct uufsd {int d_lcg; struct fs d_fs; } ;
struct cg {scalar_t__ cg_ckhash; int cg_cgx; } ;


 int CK_CYLGRP ;
 int EIO ;
 int ERROR (struct uufsd*,char*) ;
 int bread (struct uufsd*,int ,void*,int ) ;
 scalar_t__ calculate_crc32c (long,void*,int ) ;
 int cg_chkmagic (struct cg*) ;
 int cgtod (struct fs*,int) ;
 int errno ;
 int fsbtodb (struct fs*,int ) ;

int
cgget(struct uufsd *disk, int cg, struct cg *cgp)
{
 struct fs *fs;
 uint32_t cghash, calchash;

 fs = &disk->d_fs;
 if (bread(disk, fsbtodb(fs, cgtod(fs, cg)), (void *)cgp,
     fs->fs_cgsize) == -1) {
  ERROR(disk, "unable to read cylinder group");
  return (-1);
 }
 calchash = cgp->cg_ckhash;
 if ((fs->fs_metackhash & CK_CYLGRP) != 0) {
  cghash = cgp->cg_ckhash;
  cgp->cg_ckhash = 0;
  calchash = calculate_crc32c(~0L, (void *)cgp, fs->fs_cgsize);
  cgp->cg_ckhash = cghash;
 }
 if (cgp->cg_ckhash != calchash || !cg_chkmagic(cgp) ||
     cgp->cg_cgx != cg) {
  ERROR(disk, "cylinder group checks failed");
  errno = EIO;
  return (-1);
 }
 disk->d_lcg = cg;
 return (0);
}
