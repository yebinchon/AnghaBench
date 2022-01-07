
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs {int fs_bsize; } ;
struct TYPE_2__ {int dp2; } ;
struct uufsd {int d_ufs; struct fs d_fs; int * d_inoblock; int d_inomin; TYPE_1__ d_dp; } ;


 int ERROR (struct uufsd*,char*) ;
 scalar_t__ bwrite (struct uufsd*,int ,int *,int ) ;
 int ffs_update_dinode_ckhash (struct fs*,int ) ;
 int fsbtodb (struct fs*,int ) ;
 int ino_to_fsba (struct fs*,int ) ;

int
putinode(struct uufsd *disk)
{
 struct fs *fs;

 fs = &disk->d_fs;
 if (disk->d_inoblock == ((void*)0)) {
  ERROR(disk, "No inode block allocated");
  return (-1);
 }
 if (disk->d_ufs == 2)
  ffs_update_dinode_ckhash(fs, disk->d_dp.dp2);
 if (bwrite(disk, fsbtodb(fs, ino_to_fsba(&disk->d_fs, disk->d_inomin)),
     disk->d_inoblock, disk->d_fs.fs_bsize) <= 0)
  return (-1);
 return (0);
}
