
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdosfs_args {int version; int fspec; } ;
typedef int margs ;


 int MOUNT_MSDOS ;
 int MSDOSFSMNT_VERSION ;
 int __UNCONST (char const*) ;
 int err (int,char*,char const*) ;
 int memset (struct msdosfs_args*,int ,int) ;
 int rump_sys_mount (int ,char const*,int ,struct msdosfs_args*,int) ;

__attribute__((used)) static void
mount_diskfs(const char *fspec, const char *path)
{
 struct msdosfs_args margs;

 memset(&margs, 0, sizeof(margs));
 margs.fspec = __UNCONST(fspec);
 margs.version = MSDOSFSMNT_VERSION;

 if (rump_sys_mount(MOUNT_MSDOS, path, 0, &margs, sizeof(margs)) == -1)
  err(1, "mount msdosfs %s", path);
}
