
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int dummy; } ;


 int SIGINT ;
 int sigaction (int ,struct sigaction const*,int *) ;

void
sigint_cleanup(void *xsa)
{
    const struct sigaction *sa;

    sa = xsa;
    sigaction(SIGINT, sa, ((void*)0));
}
