
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int EINTR ;
 int WNOHANG ;
 int errno ;
 scalar_t__ waitpid (int,int*,int ) ;

__attribute__((used)) static void
main_sigchld_handler(int sig)
{
 int save_errno = errno;
 pid_t pid;
 int status;

 while ((pid = waitpid(-1, &status, WNOHANG)) > 0 ||
     (pid < 0 && errno == EINTR))
  ;
 errno = save_errno;
}
