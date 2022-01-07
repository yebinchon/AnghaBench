
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct null_args {int nulla_target; } ;
typedef int nargs ;
typedef int atf_tc_t ;


 int MOUNT_NULL ;
 int RL (int ) ;
 int __UNCONST (char const*) ;
 int memset (struct null_args*,int ,int) ;
 int remount_ro (int const*,char const*,int) ;
 int rump_sys_mkdir (char const*,int) ;
 int rump_sys_mount (int ,char const*,int ,struct null_args*,int) ;
 int rump_sys_unmount (char const*,int ) ;
 void stub1 (char const*) ;
 void stub2 (char const*) ;

__attribute__((used)) static void
basic_test(const atf_tc_t *tc, const char *mp, int expected_errno,
    bool use_layer, void (*pre)(const char *), void (*post)(const char *))
{
 const char *null_mount = "/nullm";
 struct null_args nargs;

 if (use_layer) {
  RL(rump_sys_mkdir(null_mount, 0777));
  memset(&nargs, 0, sizeof(nargs));
  nargs.nulla_target = __UNCONST(mp);;
  RL(rump_sys_mount(MOUNT_NULL, null_mount, 0,
      &nargs, sizeof(nargs)));
 }
 if (pre)
  (*pre)(use_layer ? null_mount : mp);
 remount_ro(tc, mp, expected_errno);
 if (post)
  (*post)(use_layer ? null_mount : mp);
 if (use_layer)
  RL(rump_sys_unmount(null_mount, 0));
}
