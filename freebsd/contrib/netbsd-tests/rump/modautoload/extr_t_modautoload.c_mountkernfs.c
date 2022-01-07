
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int old_autoload ;
typedef int new_autoload ;


 int MOUNT_KERNFS ;
 int atf_tc_fail_errno (char*) ;
 int atf_tc_skip (char*) ;
 int rump_init () ;
 int rump_nativeabi_p () ;
 int rump_sys_mkdir (char*,int) ;
 int rump_sys_mount (int ,char*,int ,int *,int ) ;
 int sysctlbyname (char*,int*,size_t*,int*,size_t) ;

__attribute__((used)) static void
mountkernfs(void)
{
 bool old_autoload, new_autoload;
 size_t old_len, new_len;
 int error;

 if (!rump_nativeabi_p())
  atf_tc_skip("host kernel modules not supported");

 rump_init();

 if (rump_sys_mkdir("/kern", 0777) == -1)
  atf_tc_fail_errno("mkdir /kern");

 new_autoload = 1;
 old_len = sizeof(old_autoload);
 new_len = sizeof(new_autoload);
 error = sysctlbyname("kern.module.autoload",
      &old_autoload, &old_len,
      &new_autoload, new_len);
 if (error != 0)
  atf_tc_fail_errno("could not enable module autoload");

 if (rump_sys_mount(MOUNT_KERNFS, "/kern", 0, ((void*)0), 0) == -1)
  atf_tc_fail_errno("could not mount kernfs");
}
