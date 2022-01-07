
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASSERT (int,char*) ;
 int LINUX_SIGRTMAX ;
 int LINUX_SIGRTMIN ;
 size_t _SIG_IDX (int) ;
 int linux_to_bsd_rt_signal (int) ;
 int* linux_to_bsd_sigtbl ;

int
linux_to_bsd_signal(int sig)
{

 KASSERT(sig > 0 && sig <= LINUX_SIGRTMAX, ("invalid Linux signal %d\n", sig));

 if (sig < LINUX_SIGRTMIN)
  return (linux_to_bsd_sigtbl[_SIG_IDX(sig)]);

 return (linux_to_bsd_rt_signal(sig));
}
