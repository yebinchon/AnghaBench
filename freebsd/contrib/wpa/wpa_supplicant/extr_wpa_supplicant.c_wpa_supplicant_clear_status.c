
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wpa_state; scalar_t__ key_mgmt; scalar_t__ mgmt_group_cipher; scalar_t__ group_cipher; scalar_t__ pairwise_cipher; } ;
typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;


 int WPA_DISCONNECTED ;
 scalar_t__ WPA_INTERFACE_DISABLED ;
 int wpa_supplicant_set_state (struct wpa_supplicant*,int ) ;
 int wpas_notify_state_changed (struct wpa_supplicant*,int,int) ;

void wpa_supplicant_clear_status(struct wpa_supplicant *wpa_s)
{
 enum wpa_states old_state = wpa_s->wpa_state;

 wpa_s->pairwise_cipher = 0;
 wpa_s->group_cipher = 0;
 wpa_s->mgmt_group_cipher = 0;
 wpa_s->key_mgmt = 0;
 if (wpa_s->wpa_state != WPA_INTERFACE_DISABLED)
  wpa_supplicant_set_state(wpa_s, WPA_DISCONNECTED);

 if (wpa_s->wpa_state != old_state)
  wpas_notify_state_changed(wpa_s, wpa_s->wpa_state, old_state);
}
