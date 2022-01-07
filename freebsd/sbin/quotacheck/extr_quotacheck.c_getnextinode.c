
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
typedef int ufs2_daddr_t ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {scalar_t__ fs_magic; } ;


 scalar_t__ FS_UFS1_MAGIC ;
 int blkread (int ,scalar_t__,long) ;
 int errx (int,char*,int ) ;
 int fsbtodb (TYPE_1__*,int ) ;
 scalar_t__ fullcnt ;
 int ino_to_fsba (TYPE_1__*,scalar_t__) ;
 long inobufsize ;
 scalar_t__ inodebuf ;
 scalar_t__ lastinum ;
 scalar_t__ lastvalidinum ;
 int nextino ;
 scalar_t__ partialcnt ;
 long partialsize ;
 int readcnt ;
 int readpercg ;
 TYPE_1__ sblock ;

union dinode *
getnextinode(ino_t inumber)
{
 long size;
 ufs2_daddr_t dblk;
 union dinode *dp;
 static caddr_t nextinop;

 if (inumber != nextino++ || inumber > lastvalidinum)
  errx(1, "bad inode number %ju to nextinode",
      (uintmax_t)inumber);
 if (inumber >= lastinum) {
  readcnt++;
  dblk = fsbtodb(&sblock, ino_to_fsba(&sblock, lastinum));
  if (readcnt % readpercg == 0) {
   size = partialsize;
   lastinum += partialcnt;
  } else {
   size = inobufsize;
   lastinum += fullcnt;
  }




  blkread(dblk, inodebuf, size);
  nextinop = inodebuf;
 }
 dp = (union dinode *)nextinop;
 if (sblock.fs_magic == FS_UFS1_MAGIC)
  nextinop += sizeof(struct ufs1_dinode);
 else
  nextinop += sizeof(struct ufs2_dinode);
 return (dp);
}
