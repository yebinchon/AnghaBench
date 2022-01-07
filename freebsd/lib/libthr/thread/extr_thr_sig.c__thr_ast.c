
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int THR_IN_CRITICAL (struct pthread*) ;
 int check_cancel (struct pthread*,int *) ;
 int check_deferred_signal (struct pthread*) ;
 int check_suspend (struct pthread*) ;

void
_thr_ast(struct pthread *curthread)
{

 if (!THR_IN_CRITICAL(curthread)) {
  check_deferred_signal(curthread);
  check_suspend(curthread);
  check_cancel(curthread, ((void*)0));
 }
}
