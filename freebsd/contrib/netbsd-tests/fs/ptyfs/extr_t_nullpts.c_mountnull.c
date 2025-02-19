
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct null_args {int nulla_target; } ;
typedef int nargs ;


 scalar_t__ EEXIST ;
 int MOUNT_NULL ;
 int __UNCONST (char const*) ;
 int atf_tc_fail_errno (char*,...) ;
 scalar_t__ errno ;
 int memset (struct null_args*,int ,int) ;
 int rump_sys_mkdir (char const*,int) ;
 int rump_sys_mount (int ,char const*,int,struct null_args*,int) ;

__attribute__((used)) static void
mountnull(const char *what, const char *mp, int flags)
{
 struct null_args nargs;

 if (rump_sys_mkdir(what, 0777) == -1) {
  if (errno != EEXIST)
   atf_tc_fail_errno("null create %s", what);
 }
 if (rump_sys_mkdir(mp, 0777) == -1) {
  if (errno != EEXIST)
   atf_tc_fail_errno("null create %s", mp);
 }
 memset(&nargs, 0, sizeof(nargs));
 nargs.nulla_target = __UNCONST(what);
 if (rump_sys_mount(MOUNT_NULL, mp, flags, &nargs, sizeof(nargs)) == -1)
  atf_tc_fail_errno("could not mount nullfs");
}
