
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keepdirty {int dummy; } ;
struct activemap {scalar_t__ am_nkeepdirty; int am_keepdirty; } ;


 int PJDLOG_ASSERT (int) ;
 struct keepdirty* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct keepdirty*,int ) ;
 int free (struct keepdirty*) ;
 int kd_next ;

__attribute__((used)) static void
keepdirty_free(struct activemap *amp)
{
 struct keepdirty *kd;

 while ((kd = TAILQ_FIRST(&amp->am_keepdirty)) != ((void*)0)) {
  TAILQ_REMOVE(&amp->am_keepdirty, kd, kd_next);
  amp->am_nkeepdirty--;
  free(kd);
 }
 PJDLOG_ASSERT(amp->am_nkeepdirty == 0);
}
