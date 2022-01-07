
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
typedef int uint8_t ;
typedef int ufs_lbn_t ;
typedef int ufs2_daddr_t ;
struct direct {scalar_t__ d_ino; } ;
typedef int off_t ;
typedef scalar_t__ ino_t ;


 int DIP (union dinode*,int ) ;
 int blkoff (int ,int ) ;
 int dblk_dirty (int ) ;
 int * dblk_read (int ,int) ;
 scalar_t__ debug ;
 int di_size ;
 int errx (int,char*,int ,int ,int ) ;
 int fs ;
 int ino_blkatoff (union dinode*,scalar_t__,int ,int*) ;
 union dinode* ino_read (scalar_t__) ;
 int lblkno (int ,int ) ;
 int printf (char*,int ,int ,int ) ;
 int sblksize (int ,int ,int ) ;

__attribute__((used)) static void
ino_clrat(ino_t parent, off_t diroff, ino_t child)
{
 union dinode *dip;
 struct direct *dp;
 ufs2_daddr_t blk;
 uint8_t *block;
 ufs_lbn_t lbn;
 int blksize;
 int frags;
 int doff;

 if (debug)
  printf("Clearing inode %ju from parent %ju at offset %jd\n",
      (uintmax_t)child, (uintmax_t)parent, diroff);

 lbn = lblkno(fs, diroff);
 doff = blkoff(fs, diroff);
 dip = ino_read(parent);
 blk = ino_blkatoff(dip, parent, lbn, &frags);
 blksize = sblksize(fs, DIP(dip, di_size), lbn);
 block = dblk_read(blk, blksize);
 dp = (struct direct *)&block[doff];
 if (dp->d_ino != child)
  errx(1, "Inode %ju does not exist in %ju at %jd",
      (uintmax_t)child, (uintmax_t)parent, diroff);
 dp->d_ino = 0;
 dblk_dirty(blk);




}
