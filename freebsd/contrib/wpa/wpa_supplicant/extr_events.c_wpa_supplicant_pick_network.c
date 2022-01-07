
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ last_scan_res_used; int blacklist_cleared; int countermeasures; scalar_t__ blacklist; TYPE_1__* conf; struct wpa_ssid* next_ssid; int * last_scan_res; } ;
struct wpa_ssid {scalar_t__ priority; int ext_psk; int passphrase; int psk_set; scalar_t__ mem_only_psk; struct wpa_ssid* next; } ;
struct wpa_bss {int dummy; } ;
struct TYPE_2__ {int num_prio; struct wpa_ssid** pssid; struct wpa_ssid* ssid; } ;


 int MSG_DEBUG ;
 int WPA_CTRL_REQ_PSK_PASSPHRASE ;
 int wpa_blacklist_clear (struct wpa_supplicant*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 char* wpa_supplicant_ctrl_req_to_string (int ,int *,char const**) ;
 struct wpa_bss* wpa_supplicant_select_bss (struct wpa_supplicant*,struct wpa_ssid*,struct wpa_ssid**,int) ;
 int wpas_notify_network_request (struct wpa_supplicant*,struct wpa_ssid*,int ,int *) ;
 int wpas_send_ctrl_req (struct wpa_supplicant*,struct wpa_ssid*,char const*,char const*) ;

struct wpa_bss * wpa_supplicant_pick_network(struct wpa_supplicant *wpa_s,
          struct wpa_ssid **selected_ssid)
{
 struct wpa_bss *selected = ((void*)0);
 int prio;
 struct wpa_ssid *next_ssid = ((void*)0);
 struct wpa_ssid *ssid;

 if (wpa_s->last_scan_res == ((void*)0) ||
     wpa_s->last_scan_res_used == 0)
  return ((void*)0);

 if (wpa_s->next_ssid) {

  for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
   if (ssid == wpa_s->next_ssid)
    break;
  }
  next_ssid = ssid;
  wpa_s->next_ssid = ((void*)0);
 }

 while (selected == ((void*)0)) {
  for (prio = 0; prio < wpa_s->conf->num_prio; prio++) {
   if (next_ssid && next_ssid->priority ==
       wpa_s->conf->pssid[prio]->priority) {
    selected = wpa_supplicant_select_bss(
     wpa_s, next_ssid, selected_ssid, 1);
    if (selected)
     break;
   }
   selected = wpa_supplicant_select_bss(
    wpa_s, wpa_s->conf->pssid[prio],
    selected_ssid, 0);
   if (selected)
    break;
  }

  if (selected == ((void*)0) && wpa_s->blacklist &&
      !wpa_s->countermeasures) {
   wpa_dbg(wpa_s, MSG_DEBUG, "No APs found - clear "
    "blacklist and try again");
   wpa_blacklist_clear(wpa_s);
   wpa_s->blacklist_cleared++;
  } else if (selected == ((void*)0))
   break;
 }

 ssid = *selected_ssid;
 if (selected && ssid && ssid->mem_only_psk && !ssid->psk_set &&
     !ssid->passphrase && !ssid->ext_psk) {
  const char *field_name, *txt = ((void*)0);

  wpa_dbg(wpa_s, MSG_DEBUG,
   "PSK/passphrase not yet available for the selected network");

  wpas_notify_network_request(wpa_s, ssid,
         WPA_CTRL_REQ_PSK_PASSPHRASE, ((void*)0));

  field_name = wpa_supplicant_ctrl_req_to_string(
   WPA_CTRL_REQ_PSK_PASSPHRASE, ((void*)0), &txt);
  if (field_name == ((void*)0))
   return ((void*)0);

  wpas_send_ctrl_req(wpa_s, ssid, field_name, txt);

  selected = ((void*)0);
 }

 return selected;
}
