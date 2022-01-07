
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wpa_state; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ priority; int ssid; int ssid_len; struct wpa_cred* parent_cred; } ;
struct wpa_cred {int dummy; } ;
struct wpa_bss {int ssid_len; int ssid; } ;


 scalar_t__ WPA_ASSOCIATED ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 struct wpa_bss* wpa_supplicant_pick_network (struct wpa_supplicant*,struct wpa_ssid**) ;

__attribute__((used)) static int already_connected(struct wpa_supplicant *wpa_s,
        struct wpa_cred *cred, struct wpa_bss *bss)
{
 struct wpa_ssid *ssid, *sel_ssid;
 struct wpa_bss *selected;

 if (wpa_s->wpa_state < WPA_ASSOCIATED || wpa_s->current_ssid == ((void*)0))
  return 0;

 ssid = wpa_s->current_ssid;
 if (ssid->parent_cred != cred)
  return 0;

 if (ssid->ssid_len != bss->ssid_len ||
     os_memcmp(ssid->ssid, bss->ssid, bss->ssid_len) != 0)
  return 0;

 sel_ssid = ((void*)0);
 selected = wpa_supplicant_pick_network(wpa_s, &sel_ssid);
 if (selected && sel_ssid && sel_ssid->priority > ssid->priority)
  return 0;

 return 1;
}
