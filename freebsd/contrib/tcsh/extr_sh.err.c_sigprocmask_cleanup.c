
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int sigprocmask (int ,int *,int *) ;

void
sigprocmask_cleanup(void *xmask)
{
    sigset_t *mask;

    mask = xmask;
    sigprocmask(SIG_SETMASK, mask, ((void*)0));
}
