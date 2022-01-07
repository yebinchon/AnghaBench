
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int sb ;
typedef int buf ;


 int MAXPATHLEN ;
 int atf_tc_fail (char*,int) ;
 int atf_tc_fail_errno (char*,int,char*) ;
 int md (char*,int,char const*,char*) ;
 scalar_t__ memcmp (struct stat*,struct stat*,int) ;
 int rump_sys_stat (char*,struct stat*) ;

__attribute__((used)) static void
checkfile(const char *path, struct stat *refp)
{
 char buf[MAXPATHLEN];
 struct stat sb;
 static int n = 1;

 md(buf, sizeof(buf), path, "file");
 if (rump_sys_stat(buf, &sb) == -1)
  atf_tc_fail_errno("cannot stat file %d (%s)", n, buf);
 if (memcmp(&sb, refp, sizeof(sb)) != 0)
  atf_tc_fail("stat mismatch %d", n);
 n++;
}
