
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {char const* f_mntfromname; int f_mntonname; } ;
struct fstab {char const* fs_spec; } ;


 int MNT_NOWAIT ;
 struct fstab* getfsfile (char const*) ;
 int getmntinfo (struct statfs**,int ) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static const char *
mountpoint_to_dev(const char *mountpoint)
{
 struct statfs *mntbuf, *statfsp;
 struct fstab *fs;
 int i, mntsize;




 mntsize = getmntinfo(&mntbuf, MNT_NOWAIT);
 for (i = 0; i < mntsize; i++) {
  statfsp = &mntbuf[i];

  if (strcmp(statfsp->f_mntonname, mountpoint) == 0)
   return (statfsp->f_mntfromname);
 }




 fs = getfsfile(mountpoint);
 if (fs != ((void*)0))
  return (fs->fs_spec);

 return (((void*)0));
}
