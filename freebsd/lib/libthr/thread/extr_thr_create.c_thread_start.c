
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ suspend; int stacksize_attr; scalar_t__ stackaddr_attr; } ;
struct pthread {char* unwind_stackend; int arg; int (* start_routine ) (int ) ;TYPE_1__ attr; scalar_t__ force_exit; int sigmask; } ;
typedef int sigset_t ;


 int PANIC (char*) ;
 int PTHREAD_CANCELED ;
 int SIG_SETMASK ;
 scalar_t__ THR_CREATE_SUSPENDED ;
 int THR_LOCK (struct pthread*) ;
 int THR_UNLOCK (struct pthread*) ;
 int __sys_sigprocmask (int ,int *,int *) ;
 int _pthread_exit (int ) ;
 int _thr_ast (struct pthread*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
thread_start(struct pthread *curthread)
{
 sigset_t set;

 if (curthread->attr.suspend == THR_CREATE_SUSPENDED)
  set = curthread->sigmask;






 THR_LOCK(curthread);
 THR_UNLOCK(curthread);

 if (curthread->force_exit)
  _pthread_exit(PTHREAD_CANCELED);

 if (curthread->attr.suspend == THR_CREATE_SUSPENDED) {
  __sys_sigprocmask(SIG_SETMASK, &set, ((void*)0));
 }







 _pthread_exit(curthread->start_routine(curthread->arg));


 PANIC("Thread has resumed after exit");
}
