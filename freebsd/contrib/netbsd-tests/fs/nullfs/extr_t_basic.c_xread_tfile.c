
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EPROGMISMATCH ;
 int MSTR ;
 int O_RDONLY ;
 int atf_tc_fail_errno (char*) ;
 int errno ;
 int rump_sys_close (int) ;
 int rump_sys_open (char const*,int ) ;
 int rump_sys_read (int,char*,int) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
xread_tfile(const char *path, const char *mstr)
{
 char buf[128];
 int fd;

 fd = rump_sys_open(path, O_RDONLY);
 if (fd == -1)
  return errno;
 if (rump_sys_read(fd, buf, sizeof(buf)) == -1)
  atf_tc_fail_errno("read tfile");
 rump_sys_close(fd);
 if (strcmp(buf, MSTR) == 0)
  return 0;
 return EPROGMISMATCH;
}
