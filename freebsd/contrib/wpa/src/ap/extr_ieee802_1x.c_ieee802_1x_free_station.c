
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {struct eapol_state_machine* eapol_sm; TYPE_1__* pending_eapol_rx; } ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {int radius_class; int last_recv_radius; } ;
struct TYPE_2__ {int buf; } ;


 int eapol_auth_free (struct eapol_state_machine*) ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,struct sta_info*) ;
 int ieee802_1x_wnm_notif_send ;
 int os_free (TYPE_1__*) ;
 int radius_free_class (int *) ;
 int radius_msg_free (int ) ;
 int wpabuf_free (int ) ;

void ieee802_1x_free_station(struct hostapd_data *hapd, struct sta_info *sta)
{
 struct eapol_state_machine *sm = sta->eapol_sm;





 if (sta->pending_eapol_rx) {
  wpabuf_free(sta->pending_eapol_rx->buf);
  os_free(sta->pending_eapol_rx);
  sta->pending_eapol_rx = ((void*)0);
 }

 if (sm == ((void*)0))
  return;

 sta->eapol_sm = ((void*)0);


 radius_msg_free(sm->last_recv_radius);
 radius_free_class(&sm->radius_class);


 eapol_auth_free(sm);
}
