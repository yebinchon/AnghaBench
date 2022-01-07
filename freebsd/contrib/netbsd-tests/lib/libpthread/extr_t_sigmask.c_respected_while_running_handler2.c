
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int flag ;
 int flag2 ;
 int pthread_self () ;
 int thr_usr2 ;

__attribute__((used)) static void
respected_while_running_handler2(int sig, siginfo_t *info, void *ctx)
{
 if (flag == 1)
  flag = 2;
 flag2 = 1;
 thr_usr2 = pthread_self();
}
