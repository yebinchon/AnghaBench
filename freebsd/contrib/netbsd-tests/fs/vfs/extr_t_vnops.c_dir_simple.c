
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int pb ;
typedef int atf_tc_t ;


 scalar_t__ ENOENT ;
 int MAXPATHLEN ;
 int USES_DIRS ;
 int atf_tc_fail (char*) ;
 int atf_tc_fail_errno (char*) ;
 scalar_t__ errno ;
 int rump_sys_mkdir (char*,int) ;
 int rump_sys_rmdir (char*) ;
 int rump_sys_stat (char*,struct stat*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void
dir_simple(const atf_tc_t *tc, const char *mountpath)
{
 char pb[MAXPATHLEN];
 struct stat sb;

 USES_DIRS;


 snprintf(pb, sizeof(pb), "%s/dir", mountpath);
 if (rump_sys_mkdir(pb, 0777) == -1)
  atf_tc_fail_errno("mkdir");
 if (rump_sys_stat(pb, &sb) == -1)
  atf_tc_fail_errno("stat new directory");


 if (rump_sys_rmdir(pb) == -1)
  atf_tc_fail_errno("rmdir");
 if (rump_sys_stat(pb, &sb) != -1 || errno != ENOENT)
  atf_tc_fail("ENOENT expected from stat");
}
