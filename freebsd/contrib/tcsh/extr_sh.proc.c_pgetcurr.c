
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {scalar_t__ p_procid; scalar_t__ p_jobid; int p_flags; struct process* p_next; } ;
struct TYPE_2__ {struct process* p_next; } ;


 int PSTOPPED ;
 struct process* pcurrent ;
 TYPE_1__ proclist ;

__attribute__((used)) static struct process *
pgetcurr(struct process *pp)
{
    struct process *np;
    struct process *xp = ((void*)0);

    for (np = proclist.p_next; np; np = np->p_next)
 if (np != pcurrent && np != pp && np->p_procid &&
     np->p_procid == np->p_jobid) {
     if (np->p_flags & PSTOPPED)
  return (np);
     if (xp == ((void*)0))
  xp = np;
 }
    return (xp);
}
