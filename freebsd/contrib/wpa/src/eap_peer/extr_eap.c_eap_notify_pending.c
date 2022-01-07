
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {int (* notify_pending ) (int ) ;} ;


 int stub1 (int ) ;

void eap_notify_pending(struct eap_sm *sm)
{
 sm->eapol_cb->notify_pending(sm->eapol_ctx);
}
