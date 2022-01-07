
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int LOG_ERR ;
 int WEXITED ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WUNTRACED ;
 int pjdlog_errno (int ,char*) ;
 int waitpid (int ,int*,int) ;

__attribute__((used)) static int
wait_for_process(pid_t pid)
{
 int status;

 if (waitpid(pid, &status, WUNTRACED | WEXITED) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to wait for a child process");
  return (1);
 }

 if (WIFEXITED(status))
  return (WEXITSTATUS(status));

 return (1);
}
