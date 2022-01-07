
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int msg ;


 int EINTR ;
 int STDERR_FILENO ;
 int WNOHANG ;
 int errno ;
 int sshpid ;
 int waitpid (int,int *,int ) ;
 int write (int ,char const*,int) ;

__attribute__((used)) static void
sigchld_handler(int sig)
{
 int save_errno = errno;
 pid_t pid;
 const char msg[] = "\rConnection closed.  \n";


 while ((pid = waitpid(sshpid, ((void*)0), WNOHANG)) == -1 && errno == EINTR)
  continue;
 if (pid == sshpid) {
  (void)write(STDERR_FILENO, msg, sizeof(msg) - 1);
  sshpid = -1;
 }

 errno = save_errno;
}
