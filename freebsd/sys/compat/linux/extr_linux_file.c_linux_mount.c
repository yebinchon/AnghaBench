
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_mount_args {int rwflag; int dir; int specialfile; int filesystemtype; } ;


 int LINUX_MS_NOEXEC ;
 int LINUX_MS_NOSUID ;
 int LINUX_MS_RDONLY ;
 int LINUX_MS_REMOUNT ;
 int MFSNAMELEN ;
 int MNAMELEN ;
 int MNT_NOEXEC ;
 int MNT_NOSUID ;
 int MNT_RDONLY ;
 int MNT_UPDATE ;
 int M_TEMP ;
 int M_WAITOK ;
 int copyinstr (int ,char*,int,int *) ;
 int free (char*,int ) ;
 int kernel_vmount (int,char*,char*,char*,char*,char*,char*,int *) ;
 char* malloc (int,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

int
linux_mount(struct thread *td, struct linux_mount_args *args)
{
 char fstypename[MFSNAMELEN];
 char *mntonname, *mntfromname;
 int error, fsflags;

 mntonname = malloc(MNAMELEN, M_TEMP, M_WAITOK);
 mntfromname = malloc(MNAMELEN, M_TEMP, M_WAITOK);
 error = copyinstr(args->filesystemtype, fstypename, MFSNAMELEN - 1,
     ((void*)0));
 if (error != 0)
  goto out;
 error = copyinstr(args->specialfile, mntfromname, MNAMELEN - 1, ((void*)0));
 if (error != 0)
  goto out;
 error = copyinstr(args->dir, mntonname, MNAMELEN - 1, ((void*)0));
 if (error != 0)
  goto out;

 if (strcmp(fstypename, "ext2") == 0) {
  strcpy(fstypename, "ext2fs");
 } else if (strcmp(fstypename, "proc") == 0) {
  strcpy(fstypename, "linprocfs");
 } else if (strcmp(fstypename, "vfat") == 0) {
  strcpy(fstypename, "msdosfs");
 }

 fsflags = 0;

 if ((args->rwflag & 0xffff0000) == 0xc0ed0000) {




  if (args->rwflag & LINUX_MS_RDONLY)
   fsflags |= MNT_RDONLY;
  if (args->rwflag & LINUX_MS_NOSUID)
   fsflags |= MNT_NOSUID;
  if (args->rwflag & LINUX_MS_NOEXEC)
   fsflags |= MNT_NOEXEC;
  if (args->rwflag & LINUX_MS_REMOUNT)
   fsflags |= MNT_UPDATE;
 }

 error = kernel_vmount(fsflags,
     "fstype", fstypename,
     "fspath", mntonname,
     "from", mntfromname,
     ((void*)0));
out:
 free(mntonname, M_TEMP);
 free(mntfromname, M_TEMP);
 return (error);
}
