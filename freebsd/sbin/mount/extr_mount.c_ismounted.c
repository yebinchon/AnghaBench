
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntfromname; int f_fstypename; int f_mntonname; } ;
struct fstab {char* fs_file; char* fs_vfstype; char* fs_spec; } ;
typedef int realfsfile ;


 int PATH_MAX ;
 int isremountable (char*) ;
 int * realpath (char*,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (char*,char*,int) ;

int
ismounted(struct fstab *fs, struct statfs *mntbuf, int mntsize)
{
 char realfsfile[PATH_MAX];
 int i;

 if (fs->fs_file[0] == '/' && fs->fs_file[1] == '\0')

  return (0);


 if (realpath(fs->fs_file, realfsfile) == ((void*)0)) {

  strlcpy(realfsfile, fs->fs_file, sizeof(realfsfile));
 }
 for (i = mntsize - 1; i >= 0; --i)
  if (strcmp(realfsfile, mntbuf[i].f_mntonname) == 0 &&
      strcmp(fs->fs_vfstype, mntbuf[i].f_fstypename) == 0 &&
      (!isremountable(fs->fs_vfstype) ||
       (strcmp(fs->fs_spec, mntbuf[i].f_mntfromname) == 0)))
   return (1);
 return (0);
}
