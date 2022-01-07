
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fstab {scalar_t__ fs_passno; char* fs_spec; int fs_file; int fs_vfstype; int * fs_mntops; int fs_type; } ;


 scalar_t__ BADTYPE (int ) ;
 int CHECK_BACKGRD ;
 int DO_BACKGRD ;
 int FSTAB_RO ;
 scalar_t__ checkfs (int ,char*,int ,char*,int *) ;
 int flags ;
 int * getmntpt (char*) ;
 int printf (char*,char*) ;
 int selected (int ) ;
 int strcmp (int ,int ) ;
 int strlen (int *) ;
 int strncmp (int *,char*,int) ;

__attribute__((used)) static int
isok(struct fstab *fs)
{
 int i;

 if (fs->fs_passno == 0)
  return (0);
 if (BADTYPE(fs->fs_type))
  return (0);
 if (!selected(fs->fs_vfstype))
  return (0);
 if (flags & DO_BACKGRD) {
  if (!strcmp(fs->fs_type, FSTAB_RO))
   return (0);
  if (getmntpt(fs->fs_spec) == ((void*)0))
   return (0);
  if (checkfs(fs->fs_vfstype, fs->fs_spec, fs->fs_file, "-F", 0))
   return (0);
  return (1);
 }
 if ((flags & CHECK_BACKGRD) == 0 || !strcmp(fs->fs_type, FSTAB_RO))
  return (1);
 for (i = strlen(fs->fs_mntops) - 6; i >= 0; i--)
  if (!strncmp(&fs->fs_mntops[i], "noauto", 6))
   break;
 if (i >= 0)
  return (1);
 if (checkfs(fs->fs_vfstype, fs->fs_spec, fs->fs_file, "-F", ((void*)0)) != 0)
  return (1);
 printf("%s: DEFER FOR BACKGROUND CHECKING\n", fs->fs_spec);
 return (0);
}
