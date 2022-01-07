
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct null_args {int nulla_target; } ;
typedef int nargs ;


 int MOUNT_NULL ;
 int __UNCONST (char const*) ;
 int atf_tc_fail_errno (char*) ;
 int memset (struct null_args*,int ,int) ;
 int rump_sys_mount (int ,char const*,int,struct null_args*,int) ;

__attribute__((used)) static void
mountnull(const char *what, const char *mp, int flags)
{
 struct null_args nargs;

 memset(&nargs, 0, sizeof(nargs));
 nargs.nulla_target = __UNCONST(what);
 if (rump_sys_mount(MOUNT_NULL, mp, flags, &nargs, sizeof(nargs)) == -1)
  atf_tc_fail_errno("could not mount nullfs");

}
