
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccsig {scalar_t__ type; int arg1; scalar_t__ has_msg; int arg2; int sig; int target; } ;
struct ccdata {int free_sigs; int sigs; } ;


 scalar_t__ SIG_USER ;
 struct ccsig* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct ccsig*,int ) ;
 int TAILQ_REMOVE (int *,struct ccsig*,int ) ;
 int cc_conn_sig_handle (int ,int ,int ,int ) ;
 int cc_sig_log (struct ccdata*,char*,char*) ;
 int cc_user_sig_handle (int ,int ,int ,int ) ;
 int link ;
 int uni_msg_destroy (int ) ;

void
cc_work(struct ccdata *cc)
{
 struct ccsig *s;

 cc_sig_log(cc, "start %s", "work");
 while ((s = TAILQ_FIRST(&cc->sigs)) != ((void*)0)) {
  TAILQ_REMOVE(&cc->sigs, s, link);
  if (s->type == SIG_USER)
   cc_user_sig_handle(s->target, s->sig, s->arg1, s->arg2);
  else {
   cc_conn_sig_handle(s->target, s->sig, s->arg1, s->arg2);
   if (s->has_msg)
    uni_msg_destroy(s->arg1);
  }
  TAILQ_INSERT_HEAD(&cc->free_sigs, s, link);
 }
 cc_sig_log(cc, "end %s", "work");
}
