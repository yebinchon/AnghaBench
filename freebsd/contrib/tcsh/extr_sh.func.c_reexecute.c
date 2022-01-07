
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int t_dflg; } ;


 int F_REPEAT ;
 int F_SAVE ;
 int TRUE ;
 int execute (struct command*,scalar_t__,int *,int *,int ) ;
 scalar_t__ tpgrp ;

void
reexecute(struct command *kp)
{
    kp->t_dflg &= F_SAVE;
    kp->t_dflg |= F_REPEAT;





    execute(kp, (tpgrp > 0 ? tpgrp : -1), ((void*)0), ((void*)0), TRUE);
}
