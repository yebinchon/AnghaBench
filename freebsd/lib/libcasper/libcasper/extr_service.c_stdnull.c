
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_DEVNULL ;
 int close (int) ;
 int dup2 (int,int) ;
 int errx (int,char*,...) ;
 int open (int ,int ) ;
 int setsid () ;

__attribute__((used)) static void
stdnull(void)
{
 int fd;

 fd = open(_PATH_DEVNULL, O_RDWR);
 if (fd == -1)
  errx(1, "Unable to open %s", _PATH_DEVNULL);

 if (setsid() == -1)
  errx(1, "Unable to detach from session");

 if (dup2(fd, STDIN_FILENO) == -1)
  errx(1, "Unable to cover stdin");
 if (dup2(fd, STDOUT_FILENO) == -1)
  errx(1, "Unable to cover stdout");
 if (dup2(fd, STDERR_FILENO) == -1)
  errx(1, "Unable to cover stderr");

 if (fd > STDERR_FILENO)
  close(fd);
}
