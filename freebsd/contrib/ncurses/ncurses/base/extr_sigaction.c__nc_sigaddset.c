
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int sigmask (int) ;

__attribute__((used)) static int
_nc_sigaddset(sigset_t * mask, int sig)
{
    *mask |= sigmask(sig);
    return 0;
}
