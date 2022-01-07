
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni {int workq; int delq; } ;
struct sigqueue {int dummy; } ;
typedef struct sig sig ;


 scalar_t__ TAILQ_EMPTY (int *) ;
 struct sig* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (struct sigqueue*) ;
 int TAILQ_INSERT_TAIL (int *,struct sig*,int ) ;
 struct sig* TAILQ_NEXT (struct sig*,int ) ;
 int TAILQ_REMOVE (int *,struct sig*,int ) ;
 int link ;
 int stub1 (struct sig*,void*) ;

void
uni_undel(struct uni *uni, int (*filter)(struct sig *, void *), void *arg)
{
 struct sigqueue newq;
 struct sig *s, *s1;

 if (TAILQ_EMPTY(&uni->delq))
  return;

 TAILQ_INIT(&newq);

 s = TAILQ_FIRST(&uni->delq);
 while (s != ((void*)0)) {
  s1 = TAILQ_NEXT(s, link);
  if ((*filter)(s, arg)) {
   TAILQ_REMOVE(&uni->delq, s, link);
   TAILQ_INSERT_TAIL(&uni->workq, s, link);
  }
  s = s1;
 }
}
