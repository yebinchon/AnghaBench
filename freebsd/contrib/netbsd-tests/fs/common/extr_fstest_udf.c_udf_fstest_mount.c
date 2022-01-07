
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udftestargs {int ta_uargs; } ;
typedef int atf_tc_t ;


 int MOUNT_UDF ;
 int rump_sys_mkdir (char const*,int) ;
 int rump_sys_mount (int ,char const*,int,int *,int) ;

int
udf_fstest_mount(const atf_tc_t *tc, void *buf, const char *path, int flags)
{
 int res;
 struct udftestargs *args = buf;

 res = rump_sys_mkdir(path, 0777);
 if (res == -1)
  return res;

 res = rump_sys_mount(MOUNT_UDF, path, flags, &args->ta_uargs,
     sizeof(args->ta_uargs));
 return res;
}
