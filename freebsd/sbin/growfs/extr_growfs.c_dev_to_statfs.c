
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct statfs {char* f_mntfromname; } const statfs ;
struct stat {scalar_t__ st_rdev; int st_mode; } ;


 int MAXPATHLEN ;
 int MNT_NOWAIT ;
 int S_ISBLK (int ) ;
 int S_ISCHR (int ) ;
 int _PATH_DEV ;
 int getmntinfo (struct statfs const**,int ) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static const struct statfs *
dev_to_statfs(const char *dev)
{
 struct stat devstat, mntdevstat;
 struct statfs *mntbuf, *statfsp;
 char device[MAXPATHLEN];
 char *mntdevname;
 int i, mntsize;




 if (stat(dev, &devstat) != 0)
  return (((void*)0));
 if (!S_ISCHR(devstat.st_mode) && !S_ISBLK(devstat.st_mode))
  return (((void*)0));

 mntsize = getmntinfo(&mntbuf, MNT_NOWAIT);
 for (i = 0; i < mntsize; i++) {
  statfsp = &mntbuf[i];
  mntdevname = statfsp->f_mntfromname;
  if (*mntdevname != '/') {
   strcpy(device, _PATH_DEV);
   strcat(device, mntdevname);
   mntdevname = device;
  }
  if (stat(mntdevname, &mntdevstat) == 0 &&
      mntdevstat.st_rdev == devstat.st_rdev)
   return (statfsp);
 }

 return (((void*)0));
}
