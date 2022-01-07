
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct direct {scalar_t__ d_reclen; } ;


 scalar_t__ DIRBLKSIZ ;
 int df ;
 scalar_t__ dirbuf ;
 int dirfile ;
 scalar_t__ dirloc ;
 int fail_dirtmp (int ) ;
 int ftell (int ) ;
 int fwrite (scalar_t__,int,int,int ) ;
 scalar_t__ prev ;
 int seekpt ;

__attribute__((used)) static void
flushent(void)
{
 ((struct direct *)(dirbuf + prev))->d_reclen = DIRBLKSIZ - prev;
 if (fwrite(dirbuf, (int)dirloc, 1, df) != 1)
  fail_dirtmp(dirfile);
 seekpt = ftell(df);
 dirloc = 0;
}
