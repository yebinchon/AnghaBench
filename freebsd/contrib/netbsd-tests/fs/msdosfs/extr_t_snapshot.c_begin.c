
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int targs ;
struct tmpfs_args {int ta_version; } ;


 int MOUNT_TMPFS ;
 int TMPFS_ARGS_VERSION ;
 int atf_tc_fail_errno (char*) ;
 int rump_sys_mkdir (char*,int) ;
 int rump_sys_mount (int ,char*,int ,struct tmpfs_args*,int) ;

__attribute__((used)) static void
begin(void)
{
 struct tmpfs_args targs = { .ta_version = TMPFS_ARGS_VERSION, };

 if (rump_sys_mkdir("/stor", 0777) == -1)
  atf_tc_fail_errno("mkdir /stor");
 if (rump_sys_mount(MOUNT_TMPFS, "/stor", 0, &targs,sizeof(targs)) == -1)
  atf_tc_fail_errno("mount storage");
}
