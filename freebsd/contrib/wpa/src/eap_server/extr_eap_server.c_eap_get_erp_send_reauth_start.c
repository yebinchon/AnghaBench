
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {int (* get_erp_send_reauth_start ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static int eap_get_erp_send_reauth_start(struct eap_sm *sm)
{
 if (sm->eapol_cb->get_erp_send_reauth_start)
  return sm->eapol_cb->get_erp_send_reauth_start(sm->eapol_ctx);
 return 0;
}
