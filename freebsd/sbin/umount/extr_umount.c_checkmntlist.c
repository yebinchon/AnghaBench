
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;
typedef int fsid_t ;


 int FIND ;
 struct statfs* getmntentry (char*,char*,int *,int ) ;
 scalar_t__ parsehexfsid (char*,int *) ;

struct statfs *
checkmntlist(char *mntname)
{
 struct statfs *sfs;
 fsid_t fsid;

 sfs = ((void*)0);
 if (parsehexfsid(mntname, &fsid) == 0)
  sfs = getmntentry(((void*)0), ((void*)0), &fsid, FIND);
 if (sfs == ((void*)0))
  sfs = getmntentry(((void*)0), mntname, ((void*)0), FIND);
 if (sfs == ((void*)0))
  sfs = getmntentry(mntname, ((void*)0), ((void*)0), FIND);
 return (sfs);
}
