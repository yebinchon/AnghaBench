
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uargs ;
struct ufs_args {int fspec; } ;


 int MOUNT_FFS ;
 int __UNCONST (char const*) ;
 int atf_tc_fail_errno (char*,char const*) ;
 int rump_sys_mount (int ,char const*,int ,struct ufs_args*,int) ;

__attribute__((used)) static void
mount_diskfs(const char *fspec, const char *path)
{
 struct ufs_args uargs;

 uargs.fspec = __UNCONST(fspec);

 if (rump_sys_mount(MOUNT_FFS, path, 0, &uargs, sizeof(uargs)) == -1)
  atf_tc_fail_errno("mount ffs %s", path);
}
