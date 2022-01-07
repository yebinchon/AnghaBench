
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ub_thread_type ;
typedef int pid_t ;


 int errno ;
 int exit (int ) ;
 int fatal_exit (char*,int ) ;
 int fork () ;
 int getpid () ;
 int strerror (int ) ;
 void* stub1 (void*) ;

void
ub_thr_fork_create(ub_thread_type* thr, void* (*func)(void*), void* arg)
{
 pid_t pid = fork();
 switch(pid) {
 default:
   *thr = (ub_thread_type)pid;
   return;
 case 0:
   *thr = (ub_thread_type)getpid();
   (void)(*func)(arg);
   exit(0);
 case -1:
   fatal_exit("could not fork: %s", strerror(errno));
 }
}
