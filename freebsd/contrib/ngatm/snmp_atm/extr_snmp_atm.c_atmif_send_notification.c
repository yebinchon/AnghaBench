
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmif_reg {int data; int (* func ) (int *,int,uintptr_t,int ) ;} ;
struct atmif_priv {int pub; int notify; } ;
typedef enum atmif_notify { ____Placeholder_atmif_notify } atmif_notify ;


 struct atmif_reg* TAILQ_FIRST (int *) ;
 struct atmif_reg* TAILQ_NEXT (struct atmif_reg*,int ) ;
 int link ;
 int stub1 (int *,int,uintptr_t,int ) ;

void
atmif_send_notification(struct atmif_priv *aif, enum atmif_notify code,
    uintptr_t arg)
{
 struct atmif_reg *r0, *r1;

 r0 = TAILQ_FIRST(&aif->notify);
 while (r0 != ((void*)0)) {
  r1 = TAILQ_NEXT(r0, link);
  r0->func(&aif->pub, code, arg, r0->data);
  r0 = r1;
 }
}
