
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_JOBCONTROL ;
 int ERR_JOBCTRLSUB ;
 int stderror (int ) ;
 int tpgrp ;

__attribute__((used)) static void
okpcntl(void)
{
    if (tpgrp == -1)
 stderror(ERR_JOBCONTROL);
    if (tpgrp == 0)
 stderror(ERR_JOBCTRLSUB);
}
