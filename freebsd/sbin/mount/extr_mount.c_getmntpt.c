
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntonname; int f_mntfromname; } ;


 int MNT_NOWAIT ;
 int getmntinfo (struct statfs**,int ) ;
 scalar_t__ strcmp (int ,char const*) ;

struct statfs *
getmntpt(const char *name)
{
 struct statfs *mntbuf;
 int i, mntsize;

 mntsize = getmntinfo(&mntbuf, MNT_NOWAIT);
 for (i = mntsize - 1; i >= 0; i--) {
  if (strcmp(mntbuf[i].f_mntfromname, name) == 0 ||
      strcmp(mntbuf[i].f_mntonname, name) == 0)
   return (&mntbuf[i]);
 }
 return (((void*)0));
}
