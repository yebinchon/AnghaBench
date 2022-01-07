
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni {int delq; int workq; int calls; } ;
struct call {int dummy; } ;


 int SIGQ_CLEAR (int *) ;
 struct call* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct call*,int ) ;
 int link ;
 int uni_destroy_call (struct call*,int) ;

__attribute__((used)) static void
uni_stop(struct uni *uni)
{
 struct call *c;

 while ((c = TAILQ_FIRST(&uni->calls)) != ((void*)0)) {
  TAILQ_REMOVE(&uni->calls, c, link);
  uni_destroy_call(c, 1);
 }

 SIGQ_CLEAR(&uni->workq);
 SIGQ_CLEAR(&uni->delq);
}
