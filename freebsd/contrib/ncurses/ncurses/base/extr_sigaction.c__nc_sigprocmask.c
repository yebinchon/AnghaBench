
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int SIG_UNBLOCK ;
 int sigsetmask (int ) ;

__attribute__((used)) static int
_nc_sigprocmask(int mode, sigset_t * mask, sigset_t * omask)
{
    sigset_t current = sigsetmask(0);

    if (omask)
 *omask = current;

    if (mode == SIG_BLOCK)
 current |= *mask;
    else if (mode == SIG_UNBLOCK)
 current &= ~*mask;
    else if (mode == SIG_SETMASK)
 current = *mask;

    sigsetmask(current);
    return 0;
}
