
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_CREAT ;
 int O_RDWR ;
 int TEST_NONROOT_ID ;
 int err (int,char*) ;
 int errno ;
 int rump_sys_chmod (char*,int) ;
 int rump_sys_chown (char*,int ,int ) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int,int) ;
 scalar_t__ rump_sys_setegid (int ) ;
 scalar_t__ rump_sys_seteuid (int ) ;
 int rump_sys_write (int,char*,int) ;
 int sleep (int) ;
 int warn (char*) ;

__attribute__((used)) static int
quota_test1(const char *testopts)
{
 static char buf[512];
 int fd;
 int error;
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




  int i;


  for (i = 0; i < 4; i++) {
   error = rump_sys_write(fd, buf, sizeof(buf));
   if (error != sizeof(buf))
    err(1, "write failed early");
  }
  sleep(2);

  if (rump_sys_write(fd, buf, sizeof(buf)) != sizeof(buf))
   error = errno;
  else
   error = 0;
 }
 rump_sys_close(fd);
 rump_sys_seteuid(0);
 rump_sys_setegid(0);
 return error;
}
