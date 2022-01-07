
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_ino; int st_nlink; } ;
typedef int ino_t ;
typedef int atf_tc_t ;


 int ATF_CHECK_ERRNO (int ,int) ;
 int ATF_REQUIRE_EQ (int,int) ;
 int EFAULT ;
 scalar_t__ ENOENT ;
 scalar_t__ FSTYPE_MSDOS (int const*) ;
 scalar_t__ FSTYPE_RUMPFS (int const*) ;
 scalar_t__ FSTYPE_SYSVBFS (int const*) ;
 int S_IFREG ;
 int atf_tc_fail_errno (char*) ;
 int atf_tc_skip (char*) ;
 scalar_t__ errno ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_link (char*,char*) ;
 int rump_sys_mknod (char*,int,int) ;
 int rump_sys_rename (char*,char*) ;
 int rump_sys_stat (char*,struct stat*) ;

__attribute__((used)) static void
rename_reg_nodir(const atf_tc_t *tc, const char *mp)
{
 bool haslinks;
 struct stat sb;
 ino_t f1ino;

 if (FSTYPE_RUMPFS(tc))
  atf_tc_skip("rename not supported by file system");

 if (rump_sys_chdir(mp) == -1)
  atf_tc_fail_errno("chdir mountpoint");

 if (FSTYPE_MSDOS(tc) || FSTYPE_SYSVBFS(tc))
  haslinks = 0;
 else
  haslinks = 1;

 if (rump_sys_mknod("file1", S_IFREG | 0777, -1) == -1)
  atf_tc_fail_errno("create file");
 if (rump_sys_mknod("file2", S_IFREG | 0777, -1) == -1)
  atf_tc_fail_errno("create file");

 if (rump_sys_stat("file1", &sb) == -1)
  atf_tc_fail_errno("stat");
 f1ino = sb.st_ino;

 if (haslinks) {
  if (rump_sys_link("file1", "file_link") == -1)
   atf_tc_fail_errno("link");
  if (rump_sys_stat("file_link", &sb) == -1)
   atf_tc_fail_errno("stat");
  ATF_REQUIRE_EQ(sb.st_ino, f1ino);
  ATF_REQUIRE_EQ(sb.st_nlink, 2);
 }

 if (rump_sys_stat("file2", &sb) == -1)
  atf_tc_fail_errno("stat");

 if (rump_sys_rename("file1", "file3") == -1)
  atf_tc_fail_errno("rename 1");
 if (rump_sys_stat("file3", &sb) == -1)
  atf_tc_fail_errno("stat 1");
 if (haslinks) {
  ATF_REQUIRE_EQ(sb.st_ino, f1ino);
 }
 if (rump_sys_stat("file1", &sb) != -1 || errno != ENOENT)
  atf_tc_fail_errno("source 1");

 if (rump_sys_rename("file3", "file2") == -1)
  atf_tc_fail_errno("rename 2");
 if (rump_sys_stat("file2", &sb) == -1)
  atf_tc_fail_errno("stat 2");
 if (haslinks) {
  ATF_REQUIRE_EQ(sb.st_ino, f1ino);
 }

 if (rump_sys_stat("file3", &sb) != -1 || errno != ENOENT)
  atf_tc_fail_errno("source 2");

 if (haslinks) {
  if (rump_sys_rename("file2", "file_link") == -1)
   atf_tc_fail_errno("rename hardlink");
  if (rump_sys_stat("file2", &sb) != -1 || errno != ENOENT)
   atf_tc_fail_errno("source 3");
  if (rump_sys_stat("file_link", &sb) == -1)
   atf_tc_fail_errno("stat 2");
  ATF_REQUIRE_EQ(sb.st_ino, f1ino);
  ATF_REQUIRE_EQ(sb.st_nlink, 1);
 }

 ATF_CHECK_ERRNO(EFAULT, rump_sys_rename("file2", ((void*)0)) == -1);
 ATF_CHECK_ERRNO(EFAULT, rump_sys_rename(((void*)0), "file2") == -1);

 rump_sys_chdir("/");
}
