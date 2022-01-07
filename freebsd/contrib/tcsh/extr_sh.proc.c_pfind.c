
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {int p_index; scalar_t__ p_procid; scalar_t__ p_jobid; char* p_command; struct process* p_next; } ;
struct TYPE_2__ {struct process* p_next; } ;
typedef char Char ;


 int ERR_AMBIG ;
 int ERR_JOBCUR ;
 int ERR_JOBPAT ;
 int ERR_JOBPREV ;
 int ERR_NAME ;
 int ERR_NOSUCHJOB ;
 scalar_t__ Isdigit (char) ;
 int STRcent2 ;
 int STRcenthash ;
 int STRcentminus ;
 int STRcentplus ;
 int atoi (int ) ;
 scalar_t__ eq (char*,int ) ;
 struct process* pcurrent ;
 struct process* pprevious ;
 scalar_t__ prefix (char*,char*) ;
 TYPE_1__ proclist ;
 int short2str (char*) ;
 int stderror (int) ;

struct process *
pfind(Char *cp)
{
    struct process *pp, *np;

    if (cp == 0 || cp[1] == 0 || eq(cp, STRcent2) || eq(cp, STRcentplus)) {
 if (pcurrent == ((void*)0))
     stderror(ERR_NAME | ERR_JOBCUR);
 return (pcurrent);
    }
    if (eq(cp, STRcentminus) || eq(cp, STRcenthash)) {
 if (pprevious == ((void*)0))
     stderror(ERR_NAME | ERR_JOBPREV);
 return (pprevious);
    }
    if (Isdigit(cp[1])) {
 int idx = atoi(short2str(cp + 1));

 for (pp = proclist.p_next; pp; pp = pp->p_next)
     if (pp->p_index == idx && pp->p_procid == pp->p_jobid)
  return (pp);
 stderror(ERR_NAME | ERR_NOSUCHJOB);
    }
    np = ((void*)0);
    for (pp = proclist.p_next; pp; pp = pp->p_next)
 if (pp->p_procid == pp->p_jobid) {
     if (cp[1] == '?') {
  Char *dp;

  for (dp = pp->p_command; *dp; dp++) {
      if (*dp != cp[2])
   continue;
      if (prefix(cp + 2, dp))
   goto match;
  }
     }
     else if (prefix(cp + 1, pp->p_command)) {
 match:
  if (np)
      stderror(ERR_NAME | ERR_AMBIG);
  np = pp;
     }
 }
    if (np)
 return (np);
    stderror(ERR_NAME | (cp[1] == '?' ? ERR_JOBPAT : ERR_NOSUCHJOB));

    return (0);
}
