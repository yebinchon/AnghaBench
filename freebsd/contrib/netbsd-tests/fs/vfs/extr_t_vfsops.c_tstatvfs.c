
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {scalar_t__ f_namemax; int f_mntonname; int f_fstypename; } ;
typedef int atf_tc_t ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_STREQ (int ,char const*) ;
 scalar_t__ FSTYPE_P2K_FFS (int const*) ;
 scalar_t__ FSTYPE_PUFFS (int const*) ;
 scalar_t__ MAXNAMLEN ;
 int ST_WAIT ;
 int atf_tc_fail_errno (char*) ;
 char* atf_tc_get_md_var (int const*,char*) ;
 int rump_sys_statvfs1 (char const*,struct statvfs*,int ) ;

__attribute__((used)) static void
tstatvfs(const atf_tc_t *tc, const char *path)
{
 const char *fstype = atf_tc_get_md_var(tc, "X-fs.mntname");
 struct statvfs svb;

 if (rump_sys_statvfs1(path, &svb, ST_WAIT) == -1)
  atf_tc_fail_errno("statvfs");

 ATF_REQUIRE(svb.f_namemax > 0 && svb.f_namemax <= MAXNAMLEN);
 if (!(FSTYPE_PUFFS(tc) || FSTYPE_P2K_FFS(tc)))
  ATF_REQUIRE_STREQ(svb.f_fstypename, fstype);
 ATF_REQUIRE_STREQ(svb.f_mntonname, path);
}
