
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {scalar_t__ p_procid; struct process* p_next; } ;
struct TYPE_2__ {struct process* p_next; } ;


 int pflush (struct process*) ;
 TYPE_1__ proclist ;

__attribute__((used)) static void
pflushall(void)
{
    struct process *pp;

    for (pp = proclist.p_next; pp != ((void*)0); pp = pp->p_next)
 if (pp->p_procid)
     pflush(pp);
}
