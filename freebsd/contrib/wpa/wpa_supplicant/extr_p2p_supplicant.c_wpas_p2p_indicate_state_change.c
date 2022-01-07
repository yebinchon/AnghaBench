
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int WPAS_P2P_CHANNEL_UPDATE_STATE_CHANGE ;
 int wpas_p2p_update_channel_list (struct wpa_supplicant*,int ) ;

void wpas_p2p_indicate_state_change(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return;

 wpas_p2p_update_channel_list(wpa_s,
         WPAS_P2P_CHANNEL_UPDATE_STATE_CHANGE);
}
