
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
typedef int ufs2_daddr_t ;
struct direct {scalar_t__ d_reclen; scalar_t__ d_ino; char* d_name; } ;
typedef scalar_t__ ino_t ;
typedef int * caddr_t ;
struct TYPE_3__ {int fs_bsize; } ;


 int CLRINO (scalar_t__,int ) ;
 long HASDUMPEDFILE ;
 long HASSUBDIRS ;
 int IFDIR ;
 int SETINO (scalar_t__,int ) ;
 scalar_t__ TSTINO (scalar_t__,int ) ;
 int blkread (int ,int *,int) ;
 scalar_t__ blockest (union dinode*) ;
 int dumpdirmap ;
 int dumpinomap ;
 int fsbtodb (TYPE_1__*,int ) ;
 union dinode* getino (scalar_t__,int*) ;
 int * malloc (int ) ;
 int msg (char*,int ,...) ;
 int quit (char*) ;
 TYPE_1__* sblock ;
 int usedinomap ;

__attribute__((used)) static int
searchdir(
 ino_t ino,
 ufs2_daddr_t blkno,
 long size,
 long filesize,
 long *tapesize,
 int nodump,
 ino_t maxino)
{
 int mode;
 struct direct *dp;
 union dinode *ip;
 long loc, ret = 0;
 static caddr_t dblk;

 if (dblk == ((void*)0) && (dblk = malloc(sblock->fs_bsize)) == ((void*)0))
  quit("searchdir: cannot allocate indirect memory.\n");
 blkread(fsbtodb(sblock, blkno), dblk, (int)size);
 if (filesize < size)
  size = filesize;
 for (loc = 0; loc < size; ) {
  dp = (struct direct *)(dblk + loc);
  if (dp->d_reclen == 0) {
   msg("corrupted directory, inumber %ju\n",
       (uintmax_t)ino);
   break;
  }
  loc += dp->d_reclen;
  if (dp->d_ino == 0)
   continue;
  if (dp->d_ino >= maxino) {
   msg("corrupted directory entry, d_ino %ju >= %ju\n",
       (uintmax_t)dp->d_ino, (uintmax_t)maxino);
   break;
  }
  if (dp->d_name[0] == '.') {
   if (dp->d_name[1] == '\0')
    continue;
   if (dp->d_name[1] == '.' && dp->d_name[2] == '\0')
    continue;
  }
  if (nodump) {
   ip = getino(dp->d_ino, &mode);
   if (TSTINO(dp->d_ino, dumpinomap)) {
    CLRINO(dp->d_ino, dumpinomap);
    *tapesize -= blockest(ip);
   }




   if (mode == IFDIR) {
    SETINO(dp->d_ino, dumpdirmap);
    CLRINO(dp->d_ino, usedinomap);
    ret |= HASSUBDIRS;
   }
  } else {
   if (TSTINO(dp->d_ino, dumpinomap)) {
    ret |= HASDUMPEDFILE;
    if (ret & HASSUBDIRS)
     break;
   }
   if (TSTINO(dp->d_ino, dumpdirmap)) {
    ret |= HASSUBDIRS;
    if (ret & HASDUMPEDFILE)
     break;
   }
  }
 }
 return (ret);
}
