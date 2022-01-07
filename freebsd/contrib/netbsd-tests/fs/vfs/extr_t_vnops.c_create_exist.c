
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int ATF_REQUIRE_ERRNO (int ,int) ;
 int EEXIST ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int RL (int) ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char const*,int,int) ;
 int rump_sys_unlink (char const*) ;

__attribute__((used)) static void
create_exist(const atf_tc_t *tc, const char *mp)
{
 const char *name = "hoge";
 int fd;

 RL(rump_sys_chdir(mp));
 RL(fd = rump_sys_open(name, O_RDWR|O_CREAT|O_EXCL, 0666));
 RL(rump_sys_close(fd));
 RL(rump_sys_unlink(name));
 RL(fd = rump_sys_open(name, O_RDWR|O_CREAT, 0666));
 RL(rump_sys_close(fd));
 RL(fd = rump_sys_open(name, O_RDWR|O_CREAT, 0666));
 RL(rump_sys_close(fd));
 ATF_REQUIRE_ERRNO(EEXIST,
     (fd = rump_sys_open(name, O_RDWR|O_CREAT|O_EXCL, 0666)));
 RL(rump_sys_unlink(name));
 RL(rump_sys_chdir("/"));
}
