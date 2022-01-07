
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_CREAT ;
 int O_RDWR ;
 int TEST_NONROOT_ID ;
 int errno ;
 int errx (int,char*,char const) ;
 int rump_sys_chmod (char*,int) ;
 int rump_sys_chown (char*,int ,int ) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int,int) ;
 scalar_t__ rump_sys_setegid (int ) ;
 scalar_t__ rump_sys_seteuid (int ) ;
 int rump_sys_write (int,char*,int) ;
 unsigned int strlen (char const*) ;
 int warn (char*) ;

__attribute__((used)) static int
quota_test0(const char *testopts)
{
 static char buf[512];
 int fd;
 int error;
 unsigned int i;
 int chowner = 1;
 for (i =0; testopts && i < strlen(testopts); i++) {
  switch(testopts[i]) {
  case 'C':
   chowner = 0;
   break;
  default:
   errx(1, "test4: unknown option %c", testopts[i]);
  }
 }
 if (chowner)
  rump_sys_chown(".", TEST_NONROOT_ID, TEST_NONROOT_ID);
 rump_sys_chmod(".", 0777);
 if (rump_sys_setegid(TEST_NONROOT_ID) != 0) {
  error = errno;
  warn("rump_sys_setegid");
  return error;
 }
 if (rump_sys_seteuid(TEST_NONROOT_ID) != 0) {
  error = errno;
  warn("rump_sys_seteuid");
  return error;
 }
 fd = rump_sys_open("test_fillup", O_CREAT | O_RDWR, 0644);
 if (fd < 0) {
  error = errno;
  warn("rump_sys_open");
 } else {
  while (rump_sys_write(fd, buf, sizeof(buf)) == sizeof(buf))
   error = 0;
  error = errno;
 }
 rump_sys_close(fd);
 rump_sys_seteuid(0);
 rump_sys_setegid(0);
 return error;
}
