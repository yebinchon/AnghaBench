
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int p2pdev; struct wpa_ssid* current_ssid; TYPE_1__* global; } ;
struct wpa_ssid {scalar_t__ mode; int ssid_len; int ssid; int p2p_persistent_group; } ;
struct TYPE_2__ {struct wpa_supplicant* p2p_invite_group; } ;


 scalar_t__ WPAS_MODE_P2P_GO ;
 struct wpa_ssid* wpas_p2p_get_persistent (int ,int const*,int ,int ) ;
 int wpas_remove_persistent_peer (struct wpa_supplicant*,struct wpa_ssid*,int const*,int) ;

__attribute__((used)) static void wpas_remove_persistent_client(struct wpa_supplicant *wpa_s,
       const u8 *peer)
{
 struct wpa_ssid *ssid;

 wpa_s = wpa_s->global->p2p_invite_group;
 if (wpa_s == ((void*)0))
  return;
 ssid = wpa_s->current_ssid;
 if (ssid == ((void*)0) || ssid->mode != WPAS_MODE_P2P_GO ||
     !ssid->p2p_persistent_group)
  return;
 ssid = wpas_p2p_get_persistent(wpa_s->p2pdev, peer,
           ssid->ssid, ssid->ssid_len);
 wpas_remove_persistent_peer(wpa_s, ssid, peer, 1);
}
