
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {int p_index; scalar_t__ p_procid; scalar_t__ p_jobid; int p_flags; struct process* p_next; } ;
struct command {int dummy; } ;
struct TYPE_2__ {struct process* p_next; } ;
typedef int Char ;


 int ERR_JOBS ;
 int FANCY ;
 int JOBDIR ;
 int JOBLIST ;
 int NAME ;
 int NUMBER ;
 int PNEEDNOTE ;
 int PRUNNING ;
 int PSTOPPED ;
 int REASON ;
 int STRml ;
 int USE (struct command*) ;
 int chkstop ;
 int eq (int *,int ) ;
 int pflush (struct process*) ;
 int pmaxindex ;
 int pprint (struct process*,int) ;
 TYPE_1__ proclist ;
 int stderror (int ) ;

void
dojobs(Char **v, struct command *c)
{
    struct process *pp;
    int flag = NUMBER | NAME | REASON | JOBLIST;
    int i;

    USE(c);
    if (chkstop)
 chkstop = 2;
    if (*++v) {
 if (v[1] || !eq(*v, STRml))
     stderror(ERR_JOBS);
 flag |= FANCY | JOBDIR;
    }
    for (i = 1; i <= pmaxindex; i++)
 for (pp = proclist.p_next; pp; pp = pp->p_next)
     if (pp->p_index == i && pp->p_procid == pp->p_jobid) {
  pp->p_flags &= ~PNEEDNOTE;
  if (!(pprint(pp, flag) & (PRUNNING | PSTOPPED)))
      pflush(pp);
  break;
     }
}
