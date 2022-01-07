
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ ufs2_daddr_t ;
typedef scalar_t__ u_int8_t ;
struct inostat {int dummy; } ;
struct inodesc {int id_func; } ;
struct cg {int cg_initediblk; } ;
struct TYPE_8__ {struct cg* b_cg; } ;
struct bufarea {TYPE_1__ b_un; } ;
typedef int ino_t ;
struct TYPE_10__ {int il_numalloced; struct inostat* il_stat; } ;
struct TYPE_9__ {int fs_ncg; scalar_t__ fs_csaddr; int fs_ipg; scalar_t__ fs_magic; int fs_fsize; int fs_cssize; } ;


 int CHAR_BIT ;
 struct inostat* Calloc (unsigned int,int) ;
 int EEXIT ;
 scalar_t__ FS_UFS2_MAGIC ;
 int INOPB (TYPE_2__*) ;
 int UFS_ROOTINO ;
 int badblk ;
 char* cdevname ;
 scalar_t__* cg_inosused (struct cg*) ;
 scalar_t__ cgbase (TYPE_2__*,int) ;
 int cgdirty (struct bufarea*) ;
 scalar_t__ cgdmin (TYPE_2__*,int) ;
 struct bufarea* cglookup (int) ;
 scalar_t__ cgsblock (TYPE_2__*,int) ;
 int check_cgmagic (int,struct bufarea*) ;
 scalar_t__ checkinode (int,struct inodesc*,int) ;
 int dupblk ;
 int errx (int ,char*,unsigned int) ;
 int free (struct inostat*) ;
 int freeinodebuf () ;
 int getnextinode (int,int) ;
 scalar_t__ got_sigalarm ;
 scalar_t__ got_siginfo ;
 scalar_t__ howmany (int ,int ) ;
 scalar_t__ inoopt ;
 TYPE_3__* inostathead ;
 int lastino ;
 int memmove (struct inostat*,struct inostat*,int) ;
 int memset (struct inodesc*,int ,int) ;
 scalar_t__ n_blks ;
 scalar_t__ n_files ;
 int pass1check ;
 int pfatal (char*,int ,int,int,int) ;
 scalar_t__ preen ;
 int printf (char*,char*,int,int,int) ;
 int pwarn (char*,int,int,...) ;
 void* roundup (int,int) ;
 TYPE_2__ sblock ;
 int setbmap (scalar_t__) ;
 int setinodebuf (int) ;
 int setproctitle (char*,char*,int) ;
 scalar_t__ usedsoftdep ;

void
pass1(void)
{
 struct inostat *info;
 struct inodesc idesc;
 struct bufarea *cgbp;
 struct cg *cgp;
 ino_t inumber, inosused, mininos;
 ufs2_daddr_t i, cgd;
 u_int8_t *cp;
 int c, rebuildcg;

 badblk = dupblk = lastino = 0;




 for (c = 0; c < sblock.fs_ncg; c++) {
  cgd = cgdmin(&sblock, c);
  if (c == 0) {
   i = cgbase(&sblock, c);
  } else
   i = cgsblock(&sblock, c);
  for (; i < cgd; i++)
   setbmap(i);
 }
 i = sblock.fs_csaddr;
 cgd = i + howmany(sblock.fs_cssize, sblock.fs_fsize);
 for (; i < cgd; i++)
  setbmap(i);




 memset(&idesc, 0, sizeof(struct inodesc));
 idesc.id_func = pass1check;
 n_files = n_blks = 0;
 for (c = 0; c < sblock.fs_ncg; c++) {
  inumber = c * sblock.fs_ipg;
  setinodebuf(inumber);
  cgbp = cglookup(c);
  cgp = cgbp->b_un.b_cg;
  rebuildcg = 0;
  if (!check_cgmagic(c, cgbp))
   rebuildcg = 1;
  if (!rebuildcg && sblock.fs_magic == FS_UFS2_MAGIC) {
   inosused = cgp->cg_initediblk;
   if (inosused > sblock.fs_ipg) {
    pfatal(
"Too many initialized inodes (%ju > %d) in cylinder group %d\nReset to %d\n",
        (uintmax_t)inosused,
        sblock.fs_ipg, c, sblock.fs_ipg);
    inosused = sblock.fs_ipg;
   }
  } else {
   inosused = sblock.fs_ipg;
  }
  if (got_siginfo) {
   printf("%s: phase 1: cyl group %d of %d (%d%%)\n",
       cdevname, c, sblock.fs_ncg,
       c * 100 / sblock.fs_ncg);
   got_siginfo = 0;
  }
  if (got_sigalarm) {
   setproctitle("%s p1 %d%%", cdevname,
        c * 100 / sblock.fs_ncg);
   got_sigalarm = 0;
  }







  if ((preen || inoopt) && usedsoftdep && !rebuildcg) {
   cp = &cg_inosused(cgp)[(inosused - 1) / CHAR_BIT];
   for ( ; inosused != 0; cp--) {
    if (*cp == 0) {
     if (inosused > CHAR_BIT)
      inosused -= CHAR_BIT;
     else
      inosused = 0;
     continue;
    }
    for (i = 1 << (CHAR_BIT - 1); i > 0; i >>= 1) {
     if (*cp & i)
      break;
     inosused--;
    }
    break;
   }
  }



  inostathead[c].il_numalloced = inosused;
  if (inosused == 0) {
   inostathead[c].il_stat = ((void*)0);
   continue;
  }
  info = Calloc((unsigned)inosused, sizeof(struct inostat));
  if (info == ((void*)0))
   errx(EEXIT, "cannot alloc %u bytes for inoinfo",
       (unsigned)(sizeof(struct inostat) * inosused));
  inostathead[c].il_stat = info;



  for (i = 0; i < inosused; i++, inumber++) {
   if (inumber < UFS_ROOTINO) {
    (void)getnextinode(inumber, rebuildcg);
    continue;
   }






   if (checkinode(inumber, &idesc, rebuildcg) == 0 &&
       i > cgp->cg_initediblk)
    break;
  }






  mininos = roundup(inosused + INOPB(&sblock), INOPB(&sblock));
  if (inoopt && !preen && !rebuildcg &&
      sblock.fs_magic == FS_UFS2_MAGIC &&
      cgp->cg_initediblk > 2 * INOPB(&sblock) &&
      mininos < cgp->cg_initediblk) {
   i = cgp->cg_initediblk;
   if (mininos < 2 * INOPB(&sblock))
    cgp->cg_initediblk = 2 * INOPB(&sblock);
   else
    cgp->cg_initediblk = mininos;
   pwarn("CYLINDER GROUP %d: RESET FROM %ju TO %d %s\n",
       c, i, cgp->cg_initediblk, "VALID INODES");
   cgdirty(cgbp);
  }
  if (inosused < sblock.fs_ipg)
   continue;
  lastino += 1;
  if (lastino < (c * sblock.fs_ipg))
   inosused = 0;
  else
   inosused = lastino - (c * sblock.fs_ipg);
  if (rebuildcg && inosused > cgp->cg_initediblk &&
      sblock.fs_magic == FS_UFS2_MAGIC) {
   cgp->cg_initediblk = roundup(inosused, INOPB(&sblock));
   pwarn("CYLINDER GROUP %d: FOUND %d VALID INODES\n", c,
       cgp->cg_initediblk);
  }






  if (inumber == lastino)
   continue;
  inostathead[c].il_numalloced = inosused;
  if (inosused == 0) {
   free(inostathead[c].il_stat);
   inostathead[c].il_stat = ((void*)0);
   continue;
  }
  info = Calloc((unsigned)inosused, sizeof(struct inostat));
  if (info == ((void*)0))
   errx(EEXIT, "cannot alloc %u bytes for inoinfo",
       (unsigned)(sizeof(struct inostat) * inosused));
  memmove(info, inostathead[c].il_stat, inosused * sizeof(*info));
  free(inostathead[c].il_stat);
  inostathead[c].il_stat = info;
 }
 freeinodebuf();
}
