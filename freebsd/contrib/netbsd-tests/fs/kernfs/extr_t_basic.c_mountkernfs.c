
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MOUNT_KERNFS ;
 int atf_tc_fail_errno (char*) ;
 int rump_init () ;
 int rump_sys_mkdir (char*,int) ;
 int rump_sys_mount (int ,char*,int ,int *,int ) ;

__attribute__((used)) static void
mountkernfs(void)
{

 rump_init();

 if (rump_sys_mkdir("/kern", 0777) == -1)
  atf_tc_fail_errno("mkdir /kern");
 if (rump_sys_mount(MOUNT_KERNFS, "/kern", 0, ((void*)0), 0) == -1)
  atf_tc_fail_errno("could not mount kernfs");
}
