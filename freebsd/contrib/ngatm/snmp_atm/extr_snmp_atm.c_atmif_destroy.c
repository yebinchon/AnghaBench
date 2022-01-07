
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmif_reg {int notify; int * ifpreg; } ;
struct atmif_priv {int notify; int * ifpreg; } ;


 int ATMIF_NOTIFY_DESTROY ;
 struct atmif_reg* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct atmif_reg*,int ) ;
 int atmif_list ;
 int atmif_send_notification (struct atmif_reg*,int ,uintptr_t) ;
 int atmif_sys_destroy (struct atmif_reg*) ;
 int free (struct atmif_reg*) ;
 int last_change ;
 int link ;
 int mibif_unnotify (int *) ;
 int this_tick ;

__attribute__((used)) static void
atmif_destroy(struct atmif_priv *aif)
{
 struct atmif_reg *r0;

 atmif_send_notification(aif, ATMIF_NOTIFY_DESTROY,
     (uintptr_t)0);

 atmif_sys_destroy(aif);

 if (aif->ifpreg != ((void*)0))
  mibif_unnotify(aif->ifpreg);

 while ((r0 = TAILQ_FIRST(&aif->notify)) != ((void*)0)) {
  TAILQ_REMOVE(&aif->notify, r0, link);
  free(r0);
 }

 TAILQ_REMOVE(&atmif_list, aif, link);
 free(aif);

 last_change = this_tick;
}
