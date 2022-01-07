
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_flags; char* f_mntonname; int f_mntfromname; } ;


 int MNT_NOWAIT ;
 long getmntinfo (struct statfs**,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static char *
getmntpt(char *name, int *mntflagsp)
{
 long mntsize, i;
 struct statfs *mntbuf;

 mntsize = getmntinfo(&mntbuf, MNT_NOWAIT);
 for (i = 0; i < mntsize; i++) {
  if (!strcmp(mntbuf[i].f_mntfromname, name)) {
   *mntflagsp = mntbuf[i].f_flags;
   return (mntbuf[i].f_mntonname);
  }
 }
 return (0);
}
