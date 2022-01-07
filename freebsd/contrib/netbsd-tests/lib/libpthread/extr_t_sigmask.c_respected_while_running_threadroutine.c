
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int atf_tc_fail (char*) ;
 int flag ;
 int flag2 ;
 int getpid () ;
 int kill (int ,int ) ;
 int printf (char*,...) ;
 int sleep (int) ;
 scalar_t__ thr_usr1 ;
 scalar_t__ thr_usr2 ;

__attribute__((used)) static void *
respected_while_running_threadroutine(void *arg)
{

 kill(getpid(), SIGUSR1);
 sleep(1);

 if (flag == 2)
  printf("Success: Both handlers ran in order\n");
 else if (flag == 1 && flag2 == 1 && thr_usr1 != thr_usr2)
  printf("Success: Handlers were invoked by different threads\n");
 else {
  printf("Failure: flag=%d, flag2=%d, thr1=%p, thr2=%p\n",
   (int)flag, (int)flag2, (void *)thr_usr1, (void *)thr_usr2);
  atf_tc_fail("failure");
 }

 return ((void*)0);
}
