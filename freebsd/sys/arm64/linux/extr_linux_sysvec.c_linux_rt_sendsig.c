
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int sig_t ;
typedef int ksiginfo_t ;


 int LIN_SDT_PROBE0 (int ,void (*) (int ,int *,int *),int ) ;
 int sysvec ;
 int todo ;

__attribute__((used)) static void
linux_rt_sendsig(sig_t catcher, ksiginfo_t *ksi, sigset_t *mask)
{


 LIN_SDT_PROBE0(sysvec, linux_rt_sendsig, todo);
}
