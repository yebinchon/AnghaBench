
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_APPEND ;
 int O_CREAT ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int O_WRONLY ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_CONSOLE ;
 int _PATH_DEVNULL ;
 int _PATH_INITLOG ;
 int _exit (int) ;
 int close (int) ;
 int dup2 (int,int) ;
 int fcntl (int,int ,...) ;
 scalar_t__ login_tty (int) ;
 int open (int ,int,...) ;
 int revoke (int ) ;
 int stall (char*) ;

__attribute__((used)) static void
open_console(void)
{
 int fd;





 revoke(_PATH_CONSOLE);
 if ((fd = open(_PATH_CONSOLE, O_RDWR | O_NONBLOCK)) != -1) {
  (void)fcntl(fd, F_SETFL, fcntl(fd, F_GETFL) & ~O_NONBLOCK);
  if (login_tty(fd) == 0)
   return;
  close(fd);
 }


 if ((fd = open(_PATH_DEVNULL, O_RDWR)) == -1) {
  stall("cannot open null device.");
  _exit(1);
 }
 if (fd != STDIN_FILENO) {
  dup2(fd, STDIN_FILENO);
  close(fd);
 }
 fd = open(_PATH_INITLOG, O_WRONLY | O_APPEND | O_CREAT, 0644);
 if (fd == -1)
  dup2(STDIN_FILENO, STDOUT_FILENO);
 else if (fd != STDOUT_FILENO) {
  dup2(fd, STDOUT_FILENO);
  close(fd);
 }
 dup2(STDOUT_FILENO, STDERR_FILENO);
}
