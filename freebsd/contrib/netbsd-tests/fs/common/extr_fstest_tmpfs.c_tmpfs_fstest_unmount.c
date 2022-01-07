
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int rump_sys_rmdir (char const*) ;
 int rump_sys_unmount (char const*,int) ;

int
tmpfs_fstest_unmount(const atf_tc_t *tc, const char *path, int flags)
{
 int res;

 res = rump_sys_unmount(path, flags);
 if (res == -1)
  return res;

 res = rump_sys_rmdir(path);
 return res;
}
