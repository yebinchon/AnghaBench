
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct uni_msg {int dummy; } ;
struct ccsig {scalar_t__ type; void* target; scalar_t__ arg1; scalar_t__ has_msg; } ;
struct ccdata {int free_sigs; int def_sigs; int sigs; } ;


 struct ccsig* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct ccsig*,int ) ;
 struct ccsig* TAILQ_NEXT (struct ccsig*,int ) ;
 int TAILQ_REMOVE (int *,struct ccsig*,int ) ;
 int link ;
 int uni_msg_destroy (struct uni_msg*) ;

__attribute__((used)) static void
sig_flush(struct ccdata *cc, u_int type, void *target)
{
 struct ccsig *s, *s1;

 s = TAILQ_FIRST(&cc->sigs);
 while (s != ((void*)0)) {
  s1 = TAILQ_NEXT(s, link);
  if (s->type == type && s->target == target) {
   if (s->has_msg)
    uni_msg_destroy((struct uni_msg *)s->arg1);
   TAILQ_REMOVE(&cc->sigs, s, link);
   TAILQ_INSERT_HEAD(&cc->free_sigs, s, link);
  }
  s = s1;
 }

 s = TAILQ_FIRST(&cc->def_sigs);
 while (s != ((void*)0)) {
  s1 = TAILQ_NEXT(s, link);
  if (s->type == type && s->target == target) {
   if (s->has_msg)
    uni_msg_destroy((struct uni_msg *)s->arg1);
   TAILQ_REMOVE(&cc->def_sigs, s, link);
   TAILQ_INSERT_HEAD(&cc->free_sigs, s, link);
  }
  s = s1;
 }
}
