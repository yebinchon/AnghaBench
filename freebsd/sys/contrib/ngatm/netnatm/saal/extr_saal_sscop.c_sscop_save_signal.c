
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sscop_sig {struct sscop_msg* msg; int sig; } ;
struct sscop_msg {int dummy; } ;
struct sscop {int saved_sigs; } ;


 int FAILURE (char*) ;
 int SIGQ_APPEND (int *,struct sscop_sig*) ;
 int SIG_ALLOC (struct sscop_sig*) ;
 int SSCOP_MSG_FREE (struct sscop_msg*) ;

__attribute__((used)) static void
sscop_save_signal(struct sscop *sscop, u_int sig, struct sscop_msg *msg)
{
 struct sscop_sig *s;

 SIG_ALLOC(s);
 if(s == ((void*)0)) {
  FAILURE("sscop: cannot allocate signal");
  SSCOP_MSG_FREE(msg);
  return;
 }
 s->sig = sig;
 s->msg = msg;
 SIGQ_APPEND(&sscop->saved_sigs, s);
}
