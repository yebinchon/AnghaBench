
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {int dummy; } ;
struct ccsig {scalar_t__ arg1; scalar_t__ has_msg; } ;
struct ccdata {int free_sigs; int def_sigs; int sigs; } ;


 int CCFREE (struct ccsig*) ;
 struct ccsig* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ccsig*,int ) ;
 int link ;
 int uni_msg_destroy (struct uni_msg*) ;

void
cc_sig_flush_all(struct ccdata *cc)
{
 struct ccsig *s;

 while ((s = TAILQ_FIRST(&cc->sigs)) != ((void*)0)) {
  if (s->has_msg)
   uni_msg_destroy((struct uni_msg *)s->arg1);
  TAILQ_REMOVE(&cc->sigs, s, link);
  CCFREE(s);
 }
 while ((s = TAILQ_FIRST(&cc->def_sigs)) != ((void*)0)) {
  if (s->has_msg)
   uni_msg_destroy((struct uni_msg *)s->arg1);
  TAILQ_REMOVE(&cc->def_sigs, s, link);
  CCFREE(s);
 }
 while ((s = TAILQ_FIRST(&cc->free_sigs)) != ((void*)0)) {
  TAILQ_REMOVE(&cc->free_sigs, s, link);
  CCFREE(s);
 }
}
