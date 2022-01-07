
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sscop {size_t state; int sigs; int saved_sigs; int aarg; } ;


 int SIGQ_MOVE (int *,int *) ;
 int SSCOP_DBG_STATE ;
 int VERBOSE (struct sscop*,int ,struct sscop*) ;
 int * states ;

__attribute__((used)) static void
sscop_set_state(struct sscop *sscop, u_int nstate)
{
 VERBOSE(sscop, SSCOP_DBG_STATE, (sscop, sscop->aarg,
     "changing state from %s to %s",
     states[sscop->state], states[nstate]));

 sscop->state = nstate;
 SIGQ_MOVE(&sscop->saved_sigs, &sscop->sigs);
}
