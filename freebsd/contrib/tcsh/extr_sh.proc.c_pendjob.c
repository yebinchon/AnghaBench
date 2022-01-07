
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int p_flags; scalar_t__ p_procid; scalar_t__ p_jobid; scalar_t__ p_index; struct process* p_friends; } ;


 int PFOREGND ;
 int PSTOPPED ;
 struct process* pcurrjob ;
 struct process* pholdjob ;
 int xprintf (char*,scalar_t__) ;
 int xputchar (char) ;

void
pendjob(void)
{
    struct process *pp, *tp;

    if (pcurrjob && (pcurrjob->p_flags & (PFOREGND | PSTOPPED)) == 0) {
 pp = pcurrjob;
 pcurrjob = ((void*)0);
 while (pp->p_procid != pp->p_jobid)
     pp = pp->p_friends;
 xprintf("[%d]", pp->p_index);
 tp = pp;
 do {
     xprintf(" %d", pp->p_procid);
     pp = pp->p_friends;
 } while (pp != tp);
 xputchar('\n');
    }
    pholdjob = pcurrjob = 0;
}
