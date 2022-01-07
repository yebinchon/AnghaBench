
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct sscop_msg {int dummy; } ;
struct sscop {size_t state; int aarg; } ;
struct TYPE_2__ {void (* func ) (struct sscop*,struct sscop_msg*) ;int (* cond ) (struct sscop*) ;} ;


 int SSCOP_DBG_BUG ;
 int SSCOP_DBG_EXEC ;
 int SSCOP_MSG_FREE (struct sscop_msg*) ;
 int VERBOSE (struct sscop*,int ,struct sscop*) ;
 int * events ;
 TYPE_1__** state_matrix ;
 int * states ;
 int stub1 (struct sscop*) ;
 void stub2 (struct sscop*,struct sscop_msg*) ;

__attribute__((used)) static int
sig_exec(struct sscop *sscop, u_int sig, struct sscop_msg *msg)
{
 void (*func)(struct sscop *, struct sscop_msg *);
 int (*cond)(struct sscop *);

 func = state_matrix[sscop->state][sig].func;
 cond = state_matrix[sscop->state][sig].cond;

 if(func == ((void*)0)) {
  VERBOSE(sscop, SSCOP_DBG_BUG, (sscop, sscop->aarg,
      "no handler for %s in state %s - ignored",
      events[sig], states[sscop->state]));
  SSCOP_MSG_FREE(msg);
  return 1;
 }
 if(cond == ((void*)0) || (*cond)(sscop)) {
  VERBOSE(sscop, SSCOP_DBG_EXEC, (sscop, sscop->aarg,
      "executing %s in %s", events[sig],
      states[sscop->state]));
  (*func)(sscop, msg);
  return 1;
 }
 VERBOSE(sscop, SSCOP_DBG_EXEC, (sscop, sscop->aarg,
     "delaying %s in %s", events[sig],
     states[sscop->state]));

 return 0;
}
