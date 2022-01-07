
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_count ;
 int child_status ;
 int did_sigchild ;
 int errno ;
 int wait (int*) ;

void
sigchld_handler(int signo)
{
 int c_status;

 did_sigchild = 1;



 if (wait(&c_status) == -1)
  child_status = -errno;
 else
  child_status = c_status;

 child_count--;
}
