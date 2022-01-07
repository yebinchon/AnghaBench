
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int RL (int ) ;
 int USES_SYMLINKS ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_symlink (char*,char*) ;

__attribute__((used)) static void
symlink_root(const atf_tc_t *tc, const char *mp)
{

 USES_SYMLINKS;

 RL(rump_sys_chdir(mp));
 RL(rump_sys_symlink("/", "foo"));
 RL(rump_sys_chdir("foo"));
}
