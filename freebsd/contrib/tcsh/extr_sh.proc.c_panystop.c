
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {int p_flags; struct process* p_next; } ;
struct TYPE_2__ {struct process* p_next; } ;


 int ERR_STOPPED ;
 int PSTOPPED ;
 int chkstop ;
 TYPE_1__ proclist ;
 int stderror (int ,char*) ;

void
panystop(int neednl)
{
    struct process *pp;

    chkstop = 2;
    for (pp = proclist.p_next; pp; pp = pp->p_next)
 if (pp->p_flags & PSTOPPED)
     stderror(ERR_STOPPED, neednl ? "\n" : "");
}
