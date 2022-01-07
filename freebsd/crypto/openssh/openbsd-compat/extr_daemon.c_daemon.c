
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_DEVNULL ;
 int _exit (int ) ;
 int chdir (char*) ;
 int close (int) ;
 int dup2 (int,int ) ;
 int fork () ;
 int open (int ,int ,int ) ;
 int setsid () ;

int
daemon(int nochdir, int noclose)
{
 int fd;

 switch (fork()) {
 case -1:
  return (-1);
 case 0:
  break;
 default:
  _exit(0);
 }

 if (setsid() == -1)
  return (-1);

 if (!nochdir)
  (void)chdir("/");

 if (!noclose && (fd = open(_PATH_DEVNULL, O_RDWR, 0)) != -1) {
  (void)dup2(fd, STDIN_FILENO);
  (void)dup2(fd, STDOUT_FILENO);
  (void)dup2(fd, STDERR_FILENO);
  if (fd > 2)
   (void)close (fd);
 }
 return (0);
}
