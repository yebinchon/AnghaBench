
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {int fs_metackhash; int fs_cgsize; } ;
struct uufsd {struct fs d_fs; } ;
struct cg {int cg_cgx; int cg_ckhash; } ;


 int CK_CYLGRP ;
 int ERROR (struct uufsd*,char*) ;
 int bwrite (struct uufsd*,int ,struct cg*,int ) ;
 int calculate_crc32c (long,void*,int ) ;
 int cgtod (struct fs*,int ) ;
 int fsbtodb (struct fs*,int ) ;

int
cgput(struct uufsd *disk, struct cg *cgp)
{
 struct fs *fs;

 fs = &disk->d_fs;
 if ((fs->fs_metackhash & CK_CYLGRP) != 0) {
  cgp->cg_ckhash = 0;
  cgp->cg_ckhash =
      calculate_crc32c(~0L, (void *)cgp, fs->fs_cgsize);
 }
 if (bwrite(disk, fsbtodb(fs, cgtod(fs, cgp->cg_cgx)), cgp,
     fs->fs_cgsize) == -1) {
  ERROR(disk, "unable to write cylinder group");
  return (-1);
 }
 return (0);
}
