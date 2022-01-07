
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int SIGUSR2 ;
 int flag ;
 int getpid () ;
 int kill (int ,int ) ;
 int pthread_self () ;
 int thr_usr1 ;

__attribute__((used)) static void
respected_while_running_handler1(int sig, siginfo_t *info, void *ctx)
{

 kill(getpid(), SIGUSR2);




 flag = 1;
 thr_usr1 = pthread_self();
}
