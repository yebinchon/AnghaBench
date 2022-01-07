
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct direct {scalar_t__ d_reclen; } ;


 scalar_t__ DIRBLKSIZ ;
 scalar_t__ DIRSIZ (int ,struct direct*) ;
 int df ;
 scalar_t__ dirbuf ;
 int dirfile ;
 scalar_t__ dirloc ;
 int fail_dirtmp (int ) ;
 int fwrite (scalar_t__,scalar_t__,int,int ) ;
 int memmove (scalar_t__,struct direct*,long) ;
 scalar_t__ prev ;

__attribute__((used)) static void
putent(struct direct *dp)
{
 dp->d_reclen = DIRSIZ(0, dp);
 if (dirloc + dp->d_reclen > DIRBLKSIZ) {
  ((struct direct *)(dirbuf + prev))->d_reclen =
      DIRBLKSIZ - prev;
  if (fwrite(dirbuf, DIRBLKSIZ, 1, df) != 1)
   fail_dirtmp(dirfile);
  dirloc = 0;
 }
 memmove(dirbuf + dirloc, dp, (long)dp->d_reclen);
 prev = dirloc;
 dirloc += dp->d_reclen;
}
