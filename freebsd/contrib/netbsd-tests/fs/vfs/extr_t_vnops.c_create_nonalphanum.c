
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int atf_tc_t ;


 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int RL (int ) ;
 int RLF (int ,char*,...) ;
 int printf (char*) ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int,int) ;
 int rump_sys_unlink (char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
create_nonalphanum(const atf_tc_t *tc, const char *mp)
{
 char buf[64];
 int i;

 RL(rump_sys_chdir(mp));

 for (i = 0; i < 256; i++) {
  int fd;
  snprintf(buf, sizeof(buf), "%c", i);
  fd = rump_sys_open(buf, O_RDWR|O_CREAT|O_EXCL, 0666);
  if (fd == -1)
   continue;
  RLF(rump_sys_close(fd), "%d", fd);
  RLF(rump_sys_unlink(buf), "%s", buf);
 }
 printf("\n");

 rump_sys_chdir("/");
}
