
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_PIPE ;
 int close_on_exec (int,int) ;
 int dmove (int,int) ;
 scalar_t__ pipe (int*) ;
 int stderror (int ) ;
 int xclose (int) ;

void
mypipe(int *pv)
{

    if (pipe(pv) < 0)
 goto oops;
    (void)close_on_exec(pv[0] = dmove(pv[0], -1), 1);
    (void)close_on_exec(pv[1] = dmove(pv[1], -1), 1);
    if (pv[0] >= 0 && pv[1] >= 0)
 return;
    if (pv[0] >= 0)
 xclose(pv[0]);
    if (pv[1] >= 0)
 xclose(pv[1]);
oops:
    stderror(ERR_PIPE);
}
