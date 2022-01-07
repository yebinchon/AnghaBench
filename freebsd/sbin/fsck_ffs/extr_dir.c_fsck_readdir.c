
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inodesc {long id_numfrags; scalar_t__ id_filesize; long id_loc; scalar_t__ id_fix; int id_blkno; } ;
struct direct {long d_reclen; } ;
struct TYPE_3__ {scalar_t__ b_buf; } ;
struct bufarea {TYPE_1__ b_un; } ;
struct TYPE_4__ {long fs_fsize; } ;


 long DIRBLKSIZ ;
 scalar_t__ IGNORE ;
 scalar_t__ dircheck (struct inodesc*,struct bufarea*,struct direct*) ;
 int dirty (struct bufarea*) ;
 scalar_t__ dofix (struct inodesc*,char*) ;
 struct bufarea* getdirblk (int ,long) ;
 int memset (struct direct*,int ,long) ;
 TYPE_2__ sblock ;

__attribute__((used)) static struct direct *
fsck_readdir(struct inodesc *idesc)
{
 struct direct *dp, *ndp;
 struct bufarea *bp;
 long size, blksiz, subsume_ndp;

 subsume_ndp = 0;
 blksiz = idesc->id_numfrags * sblock.fs_fsize;
 if (idesc->id_filesize <= 0 || idesc->id_loc >= blksiz)
  return (((void*)0));
 bp = getdirblk(idesc->id_blkno, blksiz);
 dp = (struct direct *)(bp->b_un.b_buf + idesc->id_loc);





 if (idesc->id_loc % DIRBLKSIZ != 0 || dircheck(idesc, bp, dp) != 0) {



  idesc->id_loc += dp->d_reclen;
  idesc->id_filesize -= dp->d_reclen;



  if (idesc->id_filesize <= 0 || idesc->id_loc >= blksiz ||
      idesc->id_loc % DIRBLKSIZ == 0)
   return (dp);



  ndp = (struct direct *)(bp->b_un.b_buf + idesc->id_loc);
  if (dircheck(idesc, bp, ndp) != 0)
   return (dp);




  subsume_ndp = 1;
 }




 size = DIRBLKSIZ - (idesc->id_loc % DIRBLKSIZ);
 idesc->id_loc += size;
 idesc->id_filesize -= size;
 if (idesc->id_fix == IGNORE)
  return (((void*)0));
 if (subsume_ndp) {
  memset(ndp, 0, size);
  dp->d_reclen += size;
 } else {
  memset(dp, 0, size);
  dp->d_reclen = size;
 }
 if (dofix(idesc, "DIRECTORY CORRUPTED"))
  dirty(bp);
 return (dp);
}
