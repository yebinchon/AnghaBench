
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {int p_flags; struct process* p_next; } ;
struct TYPE_2__ {struct process* p_next; } ;


 int NAME ;
 int NUMBER ;
 int PNEEDNOTE ;
 int PRUNNING ;
 int PSTOPPED ;
 int REASON ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int disabled_cleanup ;
 scalar_t__ neednote ;
 int pchild_disabled ;
 int pflush (struct process*) ;
 int pprint (struct process*,int) ;
 TYPE_1__ proclist ;

void
pnote(void)
{
    struct process *pp;
    int flags;

    neednote = 0;
    for (pp = proclist.p_next; pp != ((void*)0); pp = pp->p_next) {
 if (pp->p_flags & PNEEDNOTE) {
     pchild_disabled++;
     cleanup_push(&pchild_disabled, disabled_cleanup);
     pp->p_flags &= ~PNEEDNOTE;
     flags = pprint(pp, NUMBER | NAME | REASON);
     if ((flags & (PRUNNING | PSTOPPED)) == 0)
  pflush(pp);
     cleanup_until(&pchild_disabled);
 }
    }
}
