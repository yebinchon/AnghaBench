
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ di_size; scalar_t__ di_mode; int di_ib; int di_db; } ;
union dinode {TYPE_2__ dp2; } ;
typedef int uintmax_t ;
typedef int ufs2_daddr_t ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ mode_t ;
typedef scalar_t__ ino_t ;
typedef char* caddr_t ;
struct TYPE_13__ {char* b_buf; } ;
struct TYPE_17__ {TYPE_1__ b_un; } ;
struct TYPE_16__ {scalar_t__ fs_magic; int fs_bsize; scalar_t__ fs_maxsymlinklen; } ;
struct TYPE_15__ {int di_ib; int di_db; } ;


 int CK_INODE ;
 scalar_t__ DIP (union dinode*,int ) ;
 int EEXIT ;
 scalar_t__ FS_UFS1_MAGIC ;
 scalar_t__ IFBLK ;
 scalar_t__ IFCHR ;
 scalar_t__ IFLNK ;
 scalar_t__ IFMT ;
 int NINDIR (TYPE_4__*) ;
 int UFS_NDADDR ;
 int UFS_NIADDR ;
 int ckhashadd ;
 int * di_db ;
 int * di_ib ;
 int di_mode ;
 int di_size ;
 int dirty (TYPE_5__*) ;
 int errx (int ,char*,int ) ;
 int ffs_update_dinode_ckhash (TYPE_4__*,struct ufs2_dinode*) ;
 scalar_t__ ffs_verify_dinode_ckhash (TYPE_4__*,struct ufs2_dinode*) ;
 int flush (int ,TYPE_5__*) ;
 int fswritefd ;
 int ftypeok (union dinode*) ;
 scalar_t__ fullcnt ;
 int getblk (TYPE_5__*,int,long) ;
 int howmany (scalar_t__,int) ;
 int ino_to_fsba (TYPE_4__*,scalar_t__) ;
 TYPE_5__ inobuf ;
 long inobufsize ;
 scalar_t__ lastinum ;
 scalar_t__ lastvalidinum ;
 scalar_t__ memcmp (int ,int ,int) ;
 int nextino ;
 scalar_t__ partialcnt ;
 long partialsize ;
 scalar_t__ preen ;
 int printf (char*) ;
 int prtinode (scalar_t__,union dinode*) ;
 int pwarn (char*) ;
 int readcount ;
 int readpercg ;
 scalar_t__ reply (char*) ;
 TYPE_4__ sblock ;
 TYPE_3__ ufs2_zino ;

union dinode *
getnextinode(ino_t inumber, int rebuildcg)
{
 int j;
 long size;
 mode_t mode;
 ufs2_daddr_t ndb, blk;
 union dinode *dp;
 static caddr_t nextinop;

 if (inumber != nextino++ || inumber > lastvalidinum)
  errx(EEXIT, "bad inode number %ju to nextinode",
      (uintmax_t)inumber);
 if (inumber >= lastinum) {
  readcount++;
  blk = ino_to_fsba(&sblock, lastinum);
  if (readcount % readpercg == 0) {
   size = partialsize;
   lastinum += partialcnt;
  } else {
   size = inobufsize;
   lastinum += fullcnt;
  }





  flush(fswritefd, &inobuf);
  getblk(&inobuf, blk, size);
  nextinop = inobuf.b_un.b_buf;
 }
 dp = (union dinode *)nextinop;
 if (sblock.fs_magic == FS_UFS1_MAGIC)
  nextinop += sizeof(struct ufs1_dinode);
 else
  nextinop += sizeof(struct ufs2_dinode);
 if ((ckhashadd & CK_INODE) != 0) {
  ffs_update_dinode_ckhash(&sblock, (struct ufs2_dinode *)dp);
  dirty(&inobuf);
 }
 if (ffs_verify_dinode_ckhash(&sblock, (struct ufs2_dinode *)dp) != 0) {
  pwarn("INODE CHECK-HASH FAILED");
  prtinode(inumber, dp);
  if (preen || reply("FIX") != 0) {
   if (preen)
    printf(" (FIXED)\n");
   ffs_update_dinode_ckhash(&sblock,
       (struct ufs2_dinode *)dp);
   dirty(&inobuf);
  }
 }
 if (rebuildcg && (char *)dp == inobuf.b_un.b_buf) {




  mode = DIP(dp, di_mode) & IFMT;
  if (mode == 0) {
   if (memcmp(dp->dp2.di_db, ufs2_zino.di_db,
    UFS_NDADDR * sizeof(ufs2_daddr_t)) ||
         memcmp(dp->dp2.di_ib, ufs2_zino.di_ib,
    UFS_NIADDR * sizeof(ufs2_daddr_t)) ||
         dp->dp2.di_mode || dp->dp2.di_size)
    return (((void*)0));
   return (dp);
  }
  if (!ftypeok(dp))
   return (((void*)0));
  ndb = howmany(DIP(dp, di_size), sblock.fs_bsize);
  if (ndb < 0)
   return (((void*)0));
  if (mode == IFBLK || mode == IFCHR)
   ndb++;
  if (mode == IFLNK) {




   if (DIP(dp, di_size) < (off_t)sblock.fs_maxsymlinklen) {
    ndb = howmany(DIP(dp, di_size),
        sizeof(ufs2_daddr_t));
    if (ndb > UFS_NDADDR) {
     j = ndb - UFS_NDADDR;
     for (ndb = 1; j > 1; j--)
      ndb *= NINDIR(&sblock);
     ndb += UFS_NDADDR;
    }
   }
  }
  for (j = ndb; ndb < UFS_NDADDR && j < UFS_NDADDR; j++)
   if (DIP(dp, di_db[j]) != 0)
    return (((void*)0));
  for (j = 0, ndb -= UFS_NDADDR; ndb > 0; j++)
   ndb /= NINDIR(&sblock);
  for (; j < UFS_NIADDR; j++)
   if (DIP(dp, di_ib[j]) != 0)
    return (((void*)0));
 }
 return (dp);
}
