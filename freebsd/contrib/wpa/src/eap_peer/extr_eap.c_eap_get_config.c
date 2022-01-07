
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct eap_peer_config {int dummy; } ;
struct TYPE_2__ {struct eap_peer_config* (* get_config ) (int ) ;} ;


 struct eap_peer_config* stub1 (int ) ;

struct eap_peer_config * eap_get_config(struct eap_sm *sm)
{
 return sm->eapol_cb->get_config(sm->eapol_ctx);
}
