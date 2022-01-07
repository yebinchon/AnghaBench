
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct uni {int delq; int workq; } ;
struct sig {scalar_t__ type; scalar_t__ u; scalar_t__ msg; struct party* party; struct call* call; } ;
struct party {int dummy; } ;
struct call {int dummy; } ;


 scalar_t__ SIG_CALL ;
 int SIG_FREE (struct sig*) ;
 scalar_t__ SIG_PARTY ;
 struct sig* TAILQ_FIRST (int *) ;
 struct sig* TAILQ_NEXT (struct sig*,int ) ;
 int TAILQ_REMOVE (int *,struct sig*,int ) ;
 int UNI_FREE (scalar_t__) ;
 int link ;
 int uni_msg_destroy (scalar_t__) ;

void
uni_delsig(struct uni *uni, u_int type, struct call *c, struct party *p)
{
 struct sig *s, *s1;

 s = TAILQ_FIRST(&uni->workq);
 while (s != ((void*)0)) {
  s1 = TAILQ_NEXT(s, link);
  if ((type == SIG_CALL && s->type == SIG_CALL &&
      s->call == c) ||
      (type == SIG_PARTY && s->type == SIG_PARTY &&
      s->call == c && s->party == p)) {
   TAILQ_REMOVE(&uni->workq, s, link);
   if (s->msg)
    uni_msg_destroy(s->msg);
   if (s->u)
    UNI_FREE(s->u);
   SIG_FREE(s);
  }
  s = s1;
 }

 s = TAILQ_FIRST(&uni->delq);
 while (s != ((void*)0)) {
  s1 = TAILQ_NEXT(s, link);
  if ((type == SIG_CALL && s->type == SIG_CALL &&
      s->call == c) ||
      (type == SIG_PARTY && s->type == SIG_PARTY &&
      s->call == c && s->party == p)) {
   TAILQ_REMOVE(&uni->delq, s, link);
   if (s->msg)
    uni_msg_destroy(s->msg);
   if (s->u)
    UNI_FREE(s->u);
   SIG_FREE(s); }

  s = s1;
 }
}
