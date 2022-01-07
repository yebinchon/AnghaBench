
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unionargs ;
struct union_args {char* target; int mntflags; } ;


 scalar_t__ EOPNOTSUPP ;
 int MOUNT_UNION ;
 int UNMNT_BELOW ;
 int atf_tc_fail_errno (char*) ;
 int atf_tc_skip (char*) ;
 scalar_t__ errno ;
 int memset (struct union_args*,int ,int) ;
 int rump_sys_mkdir (char*,int) ;
 int rump_sys_mount (int ,char const*,int ,struct union_args*,int) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static void
mountunion(const char *mp, char *lowerpath)
{
 struct union_args unionargs;

 sprintf(lowerpath, "/lower");
 rump_sys_mkdir(lowerpath, 0777);


 memset(&unionargs, 0, sizeof(unionargs));
 unionargs.target = lowerpath;
 unionargs.mntflags = UNMNT_BELOW;

 if (rump_sys_mount(MOUNT_UNION, mp, 0,
     &unionargs, sizeof(unionargs)) == -1) {
  if (errno == EOPNOTSUPP) {
   atf_tc_skip("fs does not support VOP_WHITEOUT");
  } else {
   atf_tc_fail_errno("union mount");
  }
 }
}
