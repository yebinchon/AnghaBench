
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sscop_sig {size_t sig; struct sscop_msg* msg; } ;
struct sscop_msg {int dummy; } ;
struct sscop {size_t state; scalar_t__ in_sig; int sigs; int aarg; } ;


 int FAILURE (char*) ;
 int SIGQ_APPEND (int *,struct sscop_sig*) ;
 int SIG_ALLOC (struct sscop_sig*) ;
 int SSCOP_DBG_INSIG ;
 int SSCOP_MSG_FREE (struct sscop_msg*) ;
 int VERBOSE (struct sscop*,int ,struct sscop*) ;
 int * events ;
 int handle_sigs (struct sscop*) ;
 int * states ;

__attribute__((used)) static void
sscop_signal(struct sscop *sscop, u_int sig, struct sscop_msg *msg)
{
 struct sscop_sig *s;

 VERBOSE(sscop, SSCOP_DBG_INSIG, (sscop, sscop->aarg,
     "got signal %s in state %s%s", events[sig],
     states[sscop->state], sscop->in_sig ? " -- queuing" : ""));

 SIG_ALLOC(s);
 if(s == ((void*)0)) {
  FAILURE("sscop: cannot allocate signal");
  SSCOP_MSG_FREE(msg);
  return;
 }
 s->sig = sig;
 s->msg = msg;
 SIGQ_APPEND(&sscop->sigs, s);

 if(!sscop->in_sig)
  handle_sigs(sscop);
}
