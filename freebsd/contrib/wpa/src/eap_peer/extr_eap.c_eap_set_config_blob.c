
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_config_blob {int dummy; } ;
struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {int (* set_config_blob ) (int ,struct wpa_config_blob*) ;} ;


 int stub1 (int ,struct wpa_config_blob*) ;

void eap_set_config_blob(struct eap_sm *sm, struct wpa_config_blob *blob)
{

 sm->eapol_cb->set_config_blob(sm->eapol_ctx, blob);

}
