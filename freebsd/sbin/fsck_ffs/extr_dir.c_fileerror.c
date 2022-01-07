
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
typedef char* uintmax_t ;
typedef scalar_t__ ino_t ;


 int DIP (union dinode*,int ) ;
 int IFDIR ;
 int IFMT ;
 int MAXPATHLEN ;
 scalar_t__ UFS_ROOTINO ;
 int di_mode ;
 scalar_t__ ftypeok (union dinode*) ;
 int getpathname (char*,scalar_t__,scalar_t__) ;
 union dinode* ginode (scalar_t__) ;
 scalar_t__ maxino ;
 int pfatal (char*,char*,...) ;
 int printf (char*) ;
 int prtinode (scalar_t__,union dinode*) ;
 int pwarn (char*,char const*) ;

void
fileerror(ino_t cwd, ino_t ino, const char *errmesg)
{
 union dinode *dp;
 char pathbuf[MAXPATHLEN + 1];

 pwarn("%s ", errmesg);
 if (ino < UFS_ROOTINO || ino > maxino) {
  pfatal("out-of-range inode number %ju", (uintmax_t)ino);
  return;
 }
 dp = ginode(ino);
 prtinode(ino, dp);
 printf("\n");
 getpathname(pathbuf, cwd, ino);
 if (ftypeok(dp))
  pfatal("%s=%s\n",
      (DIP(dp, di_mode) & IFMT) == IFDIR ? "DIR" : "FILE",
      pathbuf);
 else
  pfatal("NAME=%s\n", pathbuf);
}
