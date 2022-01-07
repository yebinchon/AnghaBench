
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int sb1 ;
typedef int pb ;
typedef int atf_tc_t ;


 int ATF_REQUIRE (int) ;
 int MAXPATHLEN ;
 int atf_tc_fail_errno (char*) ;
 char* basename (char*) ;
 scalar_t__ memcmp (struct stat*,struct stat*,int) ;
 int rump_sys_stat (char*,struct stat*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static void
lookup_simple(const atf_tc_t *tc, const char *mountpath)
{
 char pb[MAXPATHLEN], final[MAXPATHLEN];
 struct stat sb1, sb2;

 strcpy(final, mountpath);
 snprintf(pb, sizeof(pb), "%s/../%s", mountpath, basename(final));
 if (rump_sys_stat(pb, &sb1) == -1)
  atf_tc_fail_errno("stat 1");

 snprintf(pb, sizeof(pb), "%s/./../%s", mountpath, basename(final));
 if (rump_sys_stat(pb, &sb2) == -1)
  atf_tc_fail_errno("stat 2");

 ATF_REQUIRE(memcmp(&sb1, &sb2, sizeof(sb1)) == 0);
}
