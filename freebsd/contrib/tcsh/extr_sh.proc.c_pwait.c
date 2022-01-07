
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {scalar_t__ p_procid; struct process* p_next; } ;


 int pcurrjob ;
 int pfree (struct process*) ;
 int pjwait (int ) ;
 struct process proclist ;

void
pwait(void)
{
    struct process *fp, *pp;




    for (pp = (fp = &proclist)->p_next; pp != ((void*)0); pp = (fp = pp)->p_next)
 if (pp->p_procid == 0) {
     fp->p_next = pp->p_next;
     pfree(pp);
     pp = fp;
 }
    pjwait(pcurrjob);
}
