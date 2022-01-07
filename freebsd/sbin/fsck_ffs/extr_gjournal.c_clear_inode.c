
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ufs2_daddr_t ;
struct ufs2_dinode {scalar_t__ di_extsize; int di_blocks; scalar_t__* di_extb; scalar_t__* di_ib; scalar_t__* di_db; } ;
typedef scalar_t__ off_t ;
struct TYPE_5__ {scalar_t__ fs_magic; } ;


 scalar_t__ FS_UFS2_MAGIC ;
 int SINGLE ;
 int TRIPLE ;
 int UFS_NDADDR ;
 int UFS_NXADDR ;
 int blkfree (scalar_t__,long) ;
 int btodb (int ) ;
 long dblksize (TYPE_1__*,struct ufs2_dinode*,int) ;
 int fragroundup (TYPE_1__*,scalar_t__) ;
 int freeindir (scalar_t__,int) ;
 TYPE_1__* fs ;
 long sblksize (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static void
clear_inode(struct ufs2_dinode *dino)
{
 ufs2_daddr_t bn;
 int extblocks, i, level;
 off_t osize;
 long bsize;

 extblocks = 0;
 if (fs->fs_magic == FS_UFS2_MAGIC && dino->di_extsize > 0)
  extblocks = btodb(fragroundup(fs, dino->di_extsize));

 if (extblocks > 0) {
  osize = dino->di_extsize;
  dino->di_blocks -= extblocks;
  dino->di_extsize = 0;
  for (i = 0; i < UFS_NXADDR; i++) {
   if (dino->di_extb[i] == 0)
    continue;
   blkfree(dino->di_extb[i], sblksize(fs, osize, i));
  }
 }




 for (level = 0; level <= 2; level++) {
  if (dino->di_ib[level] == 0)
   break;
  freeindir(dino->di_ib[level], level);
 }

 for (i = 0; i < UFS_NDADDR; i++) {
  bn = dino->di_db[i];
  if (bn == 0)
   continue;
  bsize = dblksize(fs, dino, i);
  blkfree(bn, bsize);
 }
}
