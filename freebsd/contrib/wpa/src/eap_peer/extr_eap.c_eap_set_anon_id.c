
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {int (* set_anon_id ) (int ,int const*,size_t) ;} ;


 int stub1 (int ,int const*,size_t) ;

void eap_set_anon_id(struct eap_sm *sm, const u8 *id, size_t len)
{
 if (sm->eapol_cb->set_anon_id)
  sm->eapol_cb->set_anon_id(sm->eapol_ctx, id, len);
}
