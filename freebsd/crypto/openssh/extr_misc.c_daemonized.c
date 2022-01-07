
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_NOCTTY ;
 int O_RDONLY ;
 int _PATH_TTY ;
 int close (int) ;
 int debug3 (char*) ;
 scalar_t__ getpid () ;
 int getppid () ;
 scalar_t__ getsid (int ) ;
 int open (int ,int) ;

int
daemonized(void)
{
 int fd;

 if ((fd = open(_PATH_TTY, O_RDONLY | O_NOCTTY)) >= 0) {
  close(fd);
  return 0;
 }
 if (getppid() != 1)
  return 0;
 if (getsid(0) != getpid())
  return 0;
 debug3("already daemonized");
 return 1;
}
