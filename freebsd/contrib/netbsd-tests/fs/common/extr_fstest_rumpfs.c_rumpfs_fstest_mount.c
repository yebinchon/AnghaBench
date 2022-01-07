
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int MOUNT_RUMPFS ;
 int rump_sys_mkdir (char const*,int) ;
 int rump_sys_mount (int ,char const*,int,int *,int ) ;

int
rumpfs_fstest_mount(const atf_tc_t *tc, void *buf, const char *path, int flags)
{
 int res;

 res = rump_sys_mkdir(path, 0777);
 if (res == -1)
  return res;

 return rump_sys_mount(MOUNT_RUMPFS, path, flags, ((void*)0), 0);
}
