
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmif_reg {TYPE_1__* aif; } ;
struct TYPE_2__ {int notify; } ;


 int TAILQ_REMOVE (int *,struct atmif_reg*,int ) ;
 int free (struct atmif_reg*) ;
 int link ;

void
atm_unnotify_aif(void *arg)
{
 struct atmif_reg *r0 = arg;

 TAILQ_REMOVE(&r0->aif->notify, r0, link);
 free(r0);
}
