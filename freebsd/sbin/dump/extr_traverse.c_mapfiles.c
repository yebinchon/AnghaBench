
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
typedef int u_char ;
struct cg {int cg_initediblk; } ;
typedef int ino_t ;
struct TYPE_4__ {int fs_ncg; int fs_ipg; scalar_t__ fs_magic; int fs_flags; int fs_cgsize; } ;


 int CHAR_BIT ;
 int CLRINO (int,int ) ;
 int DIP (union dinode*,int ) ;
 int FS_DOSOFTDEP ;
 scalar_t__ FS_UFS2_MAGIC ;
 int IFDIR ;
 int IFLNK ;
 int IFMT ;
 int IFREG ;
 int SETINO (int,int ) ;
 int UFS_ROOTINO ;
 int UF_NODUMP ;
 scalar_t__ WANTTODUMP (union dinode*) ;
 int blkread (int ,char*,int ) ;
 scalar_t__ blockest (union dinode*) ;
 int cg_chkmagic (struct cg*) ;
 int* cg_inosused (struct cg*) ;
 int cgtod (TYPE_1__*,int) ;
 int di_flags ;
 int dumpdirmap ;
 int dumpinomap ;
 int fsbtodb (TYPE_1__*,int ) ;
 union dinode* getino (int,int*) ;
 struct cg* malloc (int ) ;
 int msg (char*,int ,int ) ;
 int nonodump ;
 int quit (char*,...) ;
 TYPE_1__* sblock ;
 int usedinomap ;

int
mapfiles(ino_t maxino, long *tapesize)
{
 int i, cg, mode, inosused;
 int anydirskipped = 0;
 union dinode *dp;
 struct cg *cgp;
 ino_t ino;
 u_char *cp;

 if ((cgp = malloc(sblock->fs_cgsize)) == ((void*)0))
  quit("mapfiles: cannot allocate memory.\n");
 for (cg = 0; cg < sblock->fs_ncg; cg++) {
  ino = cg * sblock->fs_ipg;
  blkread(fsbtodb(sblock, cgtod(sblock, cg)), (char *)cgp,
      sblock->fs_cgsize);
  if (sblock->fs_magic == FS_UFS2_MAGIC)
   inosused = cgp->cg_initediblk;
  else
   inosused = sblock->fs_ipg;







  if (sblock->fs_flags & FS_DOSOFTDEP) {
   if (!cg_chkmagic(cgp))
    quit("mapfiles: cg %d: bad magic number\n", cg);
   cp = &cg_inosused(cgp)[(inosused - 1) / CHAR_BIT];
   for ( ; inosused > 0; inosused -= CHAR_BIT, cp--) {
    if (*cp == 0)
     continue;
    for (i = 1 << (CHAR_BIT - 1); i > 0; i >>= 1) {
     if (*cp & i)
      break;
     inosused--;
    }
    break;
   }
   if (inosused <= 0)
    continue;
  }
  for (i = 0; i < inosused; i++, ino++) {
   if (ino < UFS_ROOTINO ||
       (dp = getino(ino, &mode)) == ((void*)0) ||
       (mode & IFMT) == 0)
    continue;
   if (ino >= maxino) {
    msg("Skipping inode %ju >= maxino %ju\n",
        (uintmax_t)ino, (uintmax_t)maxino);
    continue;
   }






   SETINO(ino, usedinomap);
   if (mode == IFDIR)
    SETINO(ino, dumpdirmap);
   if (WANTTODUMP(dp)) {
    SETINO(ino, dumpinomap);
    if (mode != IFREG &&
        mode != IFDIR &&
        mode != IFLNK)
     *tapesize += 1;
    else
     *tapesize += blockest(dp);
    continue;
   }
   if (mode == IFDIR) {
    if (!nonodump &&
        (DIP(dp, di_flags) & UF_NODUMP))
     CLRINO(ino, usedinomap);
    anydirskipped = 1;
   }
  }
 }




 SETINO(UFS_ROOTINO, dumpinomap);
 return (anydirskipped);
}
