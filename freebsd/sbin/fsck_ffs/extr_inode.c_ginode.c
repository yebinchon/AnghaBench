
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
typedef int ufs2_daddr_t ;
struct ufs2_dinode {int dummy; } ;
typedef scalar_t__ ino_t ;
struct TYPE_9__ {int * b_dinode2; int * b_dinode1; } ;
struct TYPE_11__ {TYPE_1__ b_un; int b_flags; } ;
struct TYPE_10__ {scalar_t__ fs_magic; int fs_bsize; } ;


 int BT_INODES ;
 int B_INUSE ;
 int EEXIT ;
 scalar_t__ FS_UFS1_MAGIC ;
 scalar_t__ INOPB (TYPE_2__*) ;
 scalar_t__ UFS_ROOTINO ;
 int errx (int ,char*,int ) ;
 int ffs_update_dinode_ckhash (TYPE_2__*,struct ufs2_dinode*) ;
 scalar_t__ ffs_verify_dinode_ckhash (TYPE_2__*,struct ufs2_dinode*) ;
 TYPE_3__* getdatablk (int ,int ,int ) ;
 int ino_to_fsba (TYPE_2__*,scalar_t__) ;
 int inodirty (union dinode*) ;
 scalar_t__ maxino ;
 TYPE_3__* pbp ;
 scalar_t__ preen ;
 int printf (char*) ;
 int prtinode (scalar_t__,union dinode*) ;
 int pwarn (char*) ;
 scalar_t__ reply (char*) ;
 scalar_t__ rounddown (scalar_t__,scalar_t__) ;
 TYPE_2__ sblock ;
 scalar_t__ startinum ;

union dinode *
ginode(ino_t inumber)
{
 ufs2_daddr_t iblk;
 union dinode *dp;

 if (inumber < UFS_ROOTINO || inumber > maxino)
  errx(EEXIT, "bad inode number %ju to ginode",
      (uintmax_t)inumber);
 if (startinum == 0 ||
     inumber < startinum || inumber >= startinum + INOPB(&sblock)) {
  iblk = ino_to_fsba(&sblock, inumber);
  if (pbp != ((void*)0))
   pbp->b_flags &= ~B_INUSE;
  pbp = getdatablk(iblk, sblock.fs_bsize, BT_INODES);
  startinum = rounddown(inumber, INOPB(&sblock));
 }
 if (sblock.fs_magic == FS_UFS1_MAGIC)
  return ((union dinode *)
      &pbp->b_un.b_dinode1[inumber % INOPB(&sblock)]);
 dp = (union dinode *)&pbp->b_un.b_dinode2[inumber % INOPB(&sblock)];
 if (ffs_verify_dinode_ckhash(&sblock, (struct ufs2_dinode *)dp) != 0) {
  pwarn("INODE CHECK-HASH FAILED");
  prtinode(inumber, dp);
  if (preen || reply("FIX") != 0) {
   if (preen)
    printf(" (FIXED)\n");
   ffs_update_dinode_ckhash(&sblock,
       (struct ufs2_dinode *)dp);
   inodirty(dp);
  }
 }
 return (dp);
}
