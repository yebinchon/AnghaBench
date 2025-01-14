
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 scalar_t__ EINVAL ;
 scalar_t__ FSTYPE_RUMPFS (int const*) ;
 int USES_DIRS ;
 int atf_tc_fail (char*) ;
 int atf_tc_fail_errno (char*) ;
 int atf_tc_skip (char*) ;
 scalar_t__ errno ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_mkdir (char*,int) ;
 int rump_sys_rename (char*,char*) ;

__attribute__((used)) static void
rename_dotdot(const atf_tc_t *tc, const char *mp)
{

 if (FSTYPE_RUMPFS(tc))
  atf_tc_skip("rename not supported by file system");

 USES_DIRS;

 if (rump_sys_chdir(mp) == -1)
  atf_tc_fail_errno("chdir mountpoint");

 if (rump_sys_mkdir("dir1", 0777) == -1)
  atf_tc_fail_errno("mkdir 1");
 if (rump_sys_mkdir("dir2", 0777) == -1)
  atf_tc_fail_errno("mkdir 2");

 if (rump_sys_rename("dir1", "dir1/..") != -1 || errno != EINVAL)
  atf_tc_fail_errno("self-dotdot to");

 if (rump_sys_rename("dir1/..", "sometarget") != -1 || errno != EINVAL)
  atf_tc_fail_errno("self-dotdot from");

 if (rump_sys_rename("dir1", "dir2/..") != -1 || errno != EINVAL)
  atf_tc_fail("other-dotdot");

 rump_sys_chdir("/");
}
