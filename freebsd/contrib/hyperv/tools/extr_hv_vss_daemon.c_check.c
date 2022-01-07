
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_flags; int f_fstypename; int f_mntonname; } ;


 int EINVAL ;
 int EPERM ;
 int LOG_ERR ;
 int MNT_NOWAIT ;
 int MNT_RDONLY ;
 int VSS_LOG (int ,char*) ;
 char* dev ;
 int getmntinfo (struct statfs**,int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int
check(void)
{
 struct statfs *mntbuf, *statfsp;
 int mntsize;
 int i;

 mntsize = getmntinfo(&mntbuf, MNT_NOWAIT);
 if (mntsize == 0) {
  VSS_LOG(LOG_ERR, "There is no mount information\n");
  return (EINVAL);
 }
 for (i = mntsize - 1; i >= 0; --i)
 {
  statfsp = &mntbuf[i];

  if (strncmp(statfsp->f_mntonname, dev, strlen(dev)) == 0) {
   continue;
  } else if (statfsp->f_flags & MNT_RDONLY) {
   continue;
  } else if (strncmp(statfsp->f_fstypename, "ufs", 3) != 0) {
   return (EPERM);
  }
 }

 return (0);
}
