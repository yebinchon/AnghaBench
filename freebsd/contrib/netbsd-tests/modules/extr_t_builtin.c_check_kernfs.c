
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int HZFILE ;
 int O_RDONLY ;
 int RL (int ) ;
 int rump_sys_close (int) ;
 int rump_sys_open (int ,int ) ;
 int rump_sys_read (int,char*,int) ;

__attribute__((used)) static bool
check_kernfs(void)
{
 char buf[16];
 bool rv = 1;
 int fd;

 fd = rump_sys_open(HZFILE, O_RDONLY);
 if (fd == -1)
  return 0;
 if (rump_sys_read(fd, buf, sizeof(buf)) < 1)
  rv = 0;
 RL(rump_sys_close(fd));

 return rv;
}
