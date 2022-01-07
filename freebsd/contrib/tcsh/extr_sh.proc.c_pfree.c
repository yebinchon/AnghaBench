
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {TYPE_1__* p_cwd; struct process* p_command; } ;
struct TYPE_2__ {scalar_t__ di_count; scalar_t__ di_next; } ;


 int dfree (TYPE_1__*) ;
 int xfree (struct process*) ;

__attribute__((used)) static void
pfree(struct process *pp)
{
    xfree(pp->p_command);
    if (pp->p_cwd && --pp->p_cwd->di_count == 0)
 if (pp->p_cwd->di_next == 0)
     dfree(pp->p_cwd);
    xfree(pp);
}
