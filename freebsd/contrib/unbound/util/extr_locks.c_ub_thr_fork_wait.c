
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ub_thread_type ;
typedef int pid_t ;


 int errno ;
 int log_err (char*,int,int ) ;
 int log_warn (char*,int,int) ;
 int strerror (int ) ;
 int waitpid (int ,int*,int ) ;

void ub_thr_fork_wait(ub_thread_type thread)
{
 int status = 0;
 if(waitpid((pid_t)thread, &status, 0) == -1)
  log_err("waitpid(%d): %s", (int)thread, strerror(errno));
 if(status != 0)
  log_warn("process %d abnormal exit with status %d",
   (int)thread, status);
}
