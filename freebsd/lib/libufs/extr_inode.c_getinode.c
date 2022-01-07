
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union dinodep {struct ufs2_dinode* dp2; struct ufs1_dinode* dp1; } ;
struct fs {size_t fs_ncg; int fs_bsize; scalar_t__ fs_ipg; } ;
struct uufsd {size_t d_inomin; size_t d_inomax; int d_ufs; union dinodep d_dp; int * d_inoblock; struct fs d_fs; } ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
typedef size_t ino_t ;
typedef int * caddr_t ;


 int ERROR (struct uufsd*,char*) ;
 size_t INOPB (struct fs*) ;
 int bread (struct uufsd*,int ,int *,int ) ;
 int ffs_verify_dinode_ckhash (struct fs*,struct ufs2_dinode*) ;
 int fsbtodb (struct fs*,int ) ;
 int ino_to_fsba (struct fs*,size_t) ;
 int * malloc (int ) ;

int
getinode(struct uufsd *disk, union dinodep *dp, ino_t inum)
{
 ino_t min, max;
 caddr_t inoblock;
 struct fs *fs;

 ERROR(disk, ((void*)0));

 fs = &disk->d_fs;
 if (inum >= (ino_t)fs->fs_ipg * fs->fs_ncg) {
  ERROR(disk, "inode number out of range");
  return (-1);
 }
 inoblock = disk->d_inoblock;
 min = disk->d_inomin;
 max = disk->d_inomax;

 if (inoblock == ((void*)0)) {
  inoblock = malloc(fs->fs_bsize);
  if (inoblock == ((void*)0)) {
   ERROR(disk, "unable to allocate inode block");
   return (-1);
  }
  disk->d_inoblock = inoblock;
 }
 if (inum >= min && inum < max)
  goto gotit;
 bread(disk, fsbtodb(fs, ino_to_fsba(fs, inum)), inoblock,
     fs->fs_bsize);
 disk->d_inomin = min = inum - (inum % INOPB(fs));
 disk->d_inomax = max = min + INOPB(fs);
gotit: switch (disk->d_ufs) {
 case 1:
  disk->d_dp.dp1 = &((struct ufs1_dinode *)inoblock)[inum - min];
  if (dp != ((void*)0))
   *dp = disk->d_dp;
  return (0);
 case 2:
  disk->d_dp.dp2 = &((struct ufs2_dinode *)inoblock)[inum - min];
  if (dp != ((void*)0))
   *dp = disk->d_dp;
  if (ffs_verify_dinode_ckhash(fs, disk->d_dp.dp2) == 0)
   return (0);
  ERROR(disk, "check-hash failed for inode read from disk");
  return (-1);
 default:
  break;
 }
 ERROR(disk, "unknown UFS filesystem type");
 return (-1);
}
