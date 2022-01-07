
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_BLOCK ;
 int sigprocmask (int ,int *,int *) ;
 int sigsuspend (int *) ;

int
__pause(void)
{
 sigset_t oset;

 if (sigprocmask(SIG_BLOCK, ((void*)0), &oset) == -1)
  return (-1);
 return (sigsuspend(&oset));
}
