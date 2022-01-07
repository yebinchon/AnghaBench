
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni {int working; int workq; } ;
struct sig {int type; int u; int msg; int cookie; int sig; int party; int call; } ;


 int ASSERT (int ,char*) ;


 int SIG_FREE (struct sig*) ;



 struct sig* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct sig*,int ) ;
 int link ;
 int uni_sig_call (int ,int ,int ,int ,int ) ;
 int uni_sig_coord (struct uni*,int ,int ,int ) ;
 int uni_sig_party (int ,int ,int ,int ,int ) ;
 int uni_sig_respond (struct uni*,int ,int ,int ,int ) ;
 int uni_sig_start (struct uni*,int ,int ,int ,int ) ;

void
uni_work(struct uni *uni)
{
 struct sig *s;

 if (uni->working)
  return;
 uni->working = 1;

 while ((s = TAILQ_FIRST(&uni->workq)) != ((void*)0)) {
  TAILQ_REMOVE(&uni->workq, s, link);
  switch (s->type) {

    case 131:
   uni_sig_coord(uni, s->sig, s->cookie, s->msg);
   break;

    case 128:
   uni_sig_start(uni, s->sig, s->cookie, s->msg, s->u);
   break;

    case 129:
   uni_sig_respond(uni, s->sig, s->cookie, s->msg, s->u);
   break;

    case 132:
   uni_sig_call(s->call, s->sig, s->cookie, s->msg, s->u);
   break;

    case 130:
   uni_sig_party(s->party, s->sig, s->cookie, s->msg, s->u);
   break;

    default:
   ASSERT(0, ("bad signal type"));
  }
  SIG_FREE(s);
 }

 uni->working = 0;
}
