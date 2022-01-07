
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
typedef int u_int ;
struct uni_msg {int dummy; } ;
struct uni_all {int dummy; } ;
struct uni {int delq; } ;
struct sig {struct uni_all* u; struct party* party; struct call* call; struct uni_msg* msg; void* cookie; void* sig; int type; } ;
struct party {int dummy; } ;
struct call {int dummy; } ;


 struct sig* SIG_ALLOC () ;
 int TAILQ_INSERT_TAIL (int *,struct sig*,int ) ;
 int link ;

void
uni_delenq_sig(struct uni *uni, u_int type, struct call *call,
    struct party *party, uint32_t sig, uint32_t cookie,
    struct uni_msg *msg, struct uni_all *u)
{
 struct sig *s;

 if ((s = SIG_ALLOC()) != ((void*)0)) {
  s->type = type;
  s->sig = sig;
  s->cookie = cookie;
  s->msg = msg;
  s->call = call;
  s->party = party;
  s->u = u;
  TAILQ_INSERT_TAIL(&uni->delq, s, link);
 }
}
