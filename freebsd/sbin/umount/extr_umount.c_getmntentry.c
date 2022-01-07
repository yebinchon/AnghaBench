
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_fsid; int f_mntonname; int f_mntfromname; } ;
typedef int fsid_t ;
typedef int dowhat ;




 scalar_t__ bcmp (int *,int *,int) ;
 int* calloc (size_t,int) ;
 int err (int,char*) ;
 size_t mntinfo (struct statfs**) ;
 scalar_t__ strcmp (int ,char const*) ;

struct statfs *
getmntentry(const char *fromname, const char *onname, fsid_t *fsid, dowhat what)
{
 static struct statfs *mntbuf;
 static size_t mntsize = 0;
 static int *mntcheck = ((void*)0);
 struct statfs *sfs, *foundsfs;
 int i, count;

 if (mntsize <= 0) {
  if ((mntsize = mntinfo(&mntbuf)) <= 0)
   return (((void*)0));
 }
 if (mntcheck == ((void*)0)) {
  if ((mntcheck = calloc(mntsize + 1, sizeof(int))) == ((void*)0))
   err(1, "calloc");
 }





 count = 0;
 foundsfs = ((void*)0);
 for (i = mntsize - 1; i >= 0; i--) {
  if (mntcheck[i])
   continue;
  sfs = &mntbuf[i];
  if (fromname != ((void*)0) && strcmp(sfs->f_mntfromname,
      fromname) != 0)
   continue;
  if (onname != ((void*)0) && strcmp(sfs->f_mntonname, onname) != 0)
   continue;
  if (fsid != ((void*)0) && bcmp(&sfs->f_fsid, fsid,
      sizeof(*fsid)) != 0)
   continue;

  switch (what) {
  case 129:
   foundsfs = sfs;
   count++;
   continue;
  case 128:
   mntcheck[i] = 1;
   break;
  default:
   break;
  }
  return (sfs);
 }

 if (what == 129 && count == 1)
  return (foundsfs);
 return (((void*)0));
}
