
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_SIGPWR ;
 int LINUX_SIGTBLSZ ;
 int SIGRTMIN ;
 size_t _SIG_IDX (int) ;
 int bsd_to_linux_rt_signal (int) ;
 int* bsd_to_linux_sigtbl ;

int
bsd_to_linux_signal(int sig)
{

 if (sig <= LINUX_SIGTBLSZ)
  return (bsd_to_linux_sigtbl[_SIG_IDX(sig)]);
 if (sig == SIGRTMIN)
  return (LINUX_SIGPWR);

 return (bsd_to_linux_rt_signal(sig));
}
