
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keepdirty {int kd_extent; } ;
struct activemap {scalar_t__ am_nkeepdirty; scalar_t__ am_nkeepdirty_limit; int am_keepdirty; } ;


 int PJDLOG_ASSERT (int) ;
 int TAILQ_INSERT_HEAD (int *,struct keepdirty*,int ) ;
 struct keepdirty* TAILQ_LAST (int *,int ) ;
 int TAILQ_REMOVE (int *,struct keepdirty*,int ) ;
 int kd_next ;
 struct keepdirty* keepdirty_find (struct activemap*,int) ;
 struct keepdirty* malloc (int) ;
 int skeepdirty ;

__attribute__((used)) static bool
keepdirty_add(struct activemap *amp, int extent)
{
 struct keepdirty *kd;

 kd = keepdirty_find(amp, extent);
 if (kd != ((void*)0)) {



  TAILQ_REMOVE(&amp->am_keepdirty, kd, kd_next);
  TAILQ_INSERT_HEAD(&amp->am_keepdirty, kd, kd_next);
  return (0);
 }




 if (amp->am_nkeepdirty >= amp->am_nkeepdirty_limit) {
  kd = TAILQ_LAST(&amp->am_keepdirty, skeepdirty);
  PJDLOG_ASSERT(kd != ((void*)0));
  TAILQ_REMOVE(&amp->am_keepdirty, kd, kd_next);
  amp->am_nkeepdirty--;
  PJDLOG_ASSERT(amp->am_nkeepdirty > 0);
 }
 if (kd == ((void*)0))
  kd = malloc(sizeof(*kd));

 if (kd != ((void*)0)) {
  kd->kd_extent = extent;
  amp->am_nkeepdirty++;
  TAILQ_INSERT_HEAD(&amp->am_keepdirty, kd, kd_next);
 }

 return (1);
}
