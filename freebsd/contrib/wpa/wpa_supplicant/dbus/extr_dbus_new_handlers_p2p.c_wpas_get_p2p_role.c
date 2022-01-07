
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wpa_state; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int mode; int p2p_group; } ;
typedef enum wpas_p2p_role { ____Placeholder_wpas_p2p_role } wpas_p2p_role ;





 int WPAS_P2P_ROLE_CLIENT ;
 int WPAS_P2P_ROLE_DEVICE ;
 int WPAS_P2P_ROLE_GO ;
 scalar_t__ WPA_COMPLETED ;

__attribute__((used)) static enum wpas_p2p_role wpas_get_p2p_role(struct wpa_supplicant *wpa_s)
{
 struct wpa_ssid *ssid = wpa_s->current_ssid;

 if (!ssid)
  return WPAS_P2P_ROLE_DEVICE;
 if (wpa_s->wpa_state != WPA_COMPLETED)
  return WPAS_P2P_ROLE_DEVICE;

 switch (ssid->mode) {
 case 129:
 case 128:
  return WPAS_P2P_ROLE_GO;
 case 130:
  if (ssid->p2p_group)
   return WPAS_P2P_ROLE_CLIENT;
  return WPAS_P2P_ROLE_DEVICE;
 default:
  return WPAS_P2P_ROLE_DEVICE;
 }
}
