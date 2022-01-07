
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int REEXEC_CONFIG_PASS_FD ;
 int REEXEC_STARTUP_PIPE_FD ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_DEVNULL ;
 int close (int) ;
 int debug (char*,int,int) ;
 int debug_flag ;
 void* dup (int) ;
 int dup2 (int,int) ;
 scalar_t__ log_stderr ;
 int open (int ,int ,int ) ;
 scalar_t__ rexeced_flag ;
 int startup_pipe ;

__attribute__((used)) static void
server_accept_inetd(int *sock_in, int *sock_out)
{
 int fd;

 startup_pipe = -1;
 if (rexeced_flag) {
  close(REEXEC_CONFIG_PASS_FD);
  *sock_in = *sock_out = dup(STDIN_FILENO);
  if (!debug_flag) {
   startup_pipe = dup(REEXEC_STARTUP_PIPE_FD);
   close(REEXEC_STARTUP_PIPE_FD);
  }
 } else {
  *sock_in = dup(STDIN_FILENO);
  *sock_out = dup(STDOUT_FILENO);
 }





 if ((fd = open(_PATH_DEVNULL, O_RDWR, 0)) != -1) {
  dup2(fd, STDIN_FILENO);
  dup2(fd, STDOUT_FILENO);
  if (!log_stderr)
   dup2(fd, STDERR_FILENO);
  if (fd > (log_stderr ? STDERR_FILENO : STDOUT_FILENO))
   close(fd);
 }
 debug("inetd sockets after dupping: %d, %d", *sock_in, *sock_out);
}
