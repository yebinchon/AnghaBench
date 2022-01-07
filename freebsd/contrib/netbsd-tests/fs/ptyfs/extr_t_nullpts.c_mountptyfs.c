
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptyfs_args {int mode; int version; } ;
typedef int args ;


 scalar_t__ EEXIST ;
 int MOUNT_PTYFS ;
 int PTYFS_ARGSVERSION ;
 int atf_tc_fail_errno (char*,...) ;
 scalar_t__ errno ;
 int memset (struct ptyfs_args*,int ,int) ;
 int rump_sys_mkdir (char const*,int) ;
 int rump_sys_mount (int ,char const*,int,struct ptyfs_args*,int) ;

__attribute__((used)) static void
mountptyfs(const char *mp, int flags)
{
 struct ptyfs_args args;

 if (rump_sys_mkdir(mp, 0777) == -1) {
  if (errno != EEXIST)
   atf_tc_fail_errno("null create %s", mp);
 }
 memset(&args, 0, sizeof(args));
 args.version = PTYFS_ARGSVERSION;
 args.mode = 0777;
 if (rump_sys_mount(MOUNT_PTYFS, mp, flags, &args, sizeof(args)) == -1)
  atf_tc_fail_errno("could not mount ptyfs");
}
