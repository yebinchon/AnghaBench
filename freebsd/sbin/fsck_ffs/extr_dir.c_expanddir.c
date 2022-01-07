
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int ufs2_daddr_t ;
struct TYPE_5__ {char* b_buf; } ;
struct bufarea {TYPE_1__ b_un; scalar_t__ b_errs; } ;
struct TYPE_6__ {size_t fs_bsize; int fs_frag; } ;


 int DIP (union dinode*,int ) ;
 int DIP_SET (union dinode*,int ,int) ;
 int DIRBLKSIZ ;
 int UFS_NDADDR ;
 int allocblk (int ) ;
 int btodb (size_t) ;
 int di_blocks ;
 int * di_db ;
 int di_size ;
 int dirty (struct bufarea*) ;
 char emptydir ;
 int freeblk (int,int ) ;
 struct bufarea* getdirblk (int,size_t) ;
 int inodirty (union dinode*) ;
 int lblkno (TYPE_2__*,int) ;
 int memmove (char*,char*,int) ;
 scalar_t__ preen ;
 int printf (char*) ;
 int pwarn (char*,char*) ;
 scalar_t__ reply (char*) ;
 size_t sblksize (TYPE_2__*,int,int) ;
 TYPE_2__ sblock ;

__attribute__((used)) static int
expanddir(union dinode *dp, char *name)
{
 ufs2_daddr_t lastbn, newblk;
 struct bufarea *bp;
 char *cp, firstblk[DIRBLKSIZ];

 lastbn = lblkno(&sblock, DIP(dp, di_size));
 if (lastbn >= UFS_NDADDR - 1 || DIP(dp, di_db[lastbn]) == 0 ||
     DIP(dp, di_size) == 0)
  return (0);
 if ((newblk = allocblk(sblock.fs_frag)) == 0)
  return (0);
 DIP_SET(dp, di_db[lastbn + 1], DIP(dp, di_db[lastbn]));
 DIP_SET(dp, di_db[lastbn], newblk);
 DIP_SET(dp, di_size, DIP(dp, di_size) + sblock.fs_bsize);
 DIP_SET(dp, di_blocks, DIP(dp, di_blocks) + btodb(sblock.fs_bsize));
 bp = getdirblk(DIP(dp, di_db[lastbn + 1]),
  sblksize(&sblock, DIP(dp, di_size), lastbn + 1));
 if (bp->b_errs)
  goto bad;
 memmove(firstblk, bp->b_un.b_buf, DIRBLKSIZ);
 bp = getdirblk(newblk, sblock.fs_bsize);
 if (bp->b_errs)
  goto bad;
 memmove(bp->b_un.b_buf, firstblk, DIRBLKSIZ);
 for (cp = &bp->b_un.b_buf[DIRBLKSIZ];
      cp < &bp->b_un.b_buf[sblock.fs_bsize];
      cp += DIRBLKSIZ)
  memmove(cp, &emptydir, sizeof emptydir);
 dirty(bp);
 bp = getdirblk(DIP(dp, di_db[lastbn + 1]),
  sblksize(&sblock, DIP(dp, di_size), lastbn + 1));
 if (bp->b_errs)
  goto bad;
 memmove(bp->b_un.b_buf, &emptydir, sizeof emptydir);
 pwarn("NO SPACE LEFT IN %s", name);
 if (preen)
  printf(" (EXPANDED)\n");
 else if (reply("EXPAND") == 0)
  goto bad;
 dirty(bp);
 inodirty(dp);
 return (1);
bad:
 DIP_SET(dp, di_db[lastbn], DIP(dp, di_db[lastbn + 1]));
 DIP_SET(dp, di_db[lastbn + 1], 0);
 DIP_SET(dp, di_size, DIP(dp, di_size) - sblock.fs_bsize);
 DIP_SET(dp, di_blocks, DIP(dp, di_blocks) - btodb(sblock.fs_bsize));
 freeblk(newblk, sblock.fs_frag);
 return (0);
}
