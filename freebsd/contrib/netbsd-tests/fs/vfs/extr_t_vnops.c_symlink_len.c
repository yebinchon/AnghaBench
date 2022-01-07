
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int ATF_REQUIRE (char*) ;
 int ATF_REQUIRE_ERRNO (int ,int) ;
 int ENAMETOOLONG ;
 int RL (int ) ;
 int RLF (int ,char*,char const*) ;
 int USES_SYMLINKS ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memset (char*,char,size_t) ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_symlink (char*,char*) ;
 int rump_sys_unlink (char*) ;

__attribute__((used)) static void
symlink_len(const atf_tc_t *tc, const char *mp, size_t len)
{
 char *buf;
 int r;

 USES_SYMLINKS;

 RLF(rump_sys_chdir(mp), "%s", mp);

 buf = malloc(len + 1);
 ATF_REQUIRE(buf);
 memset(buf, 'a', len);
 buf[len] = '\0';
 r = rump_sys_symlink(buf, "afile");
 if (r == -1) {
  ATF_REQUIRE_ERRNO(ENAMETOOLONG, r);
 } else {
  RL(rump_sys_unlink("afile"));
 }
 free(buf);

 RL(rump_sys_chdir("/"));
}
