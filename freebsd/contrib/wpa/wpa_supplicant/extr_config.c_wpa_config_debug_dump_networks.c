
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {struct wpa_ssid* pnext; int ssid_len; int ssid; int id; int priority; } ;
struct wpa_config {int num_prio; struct wpa_ssid** pssid; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int ,...) ;
 int wpa_ssid_txt (int ,int ) ;

void wpa_config_debug_dump_networks(struct wpa_config *config)
{
 int prio;
 struct wpa_ssid *ssid;

 for (prio = 0; prio < config->num_prio; prio++) {
  ssid = config->pssid[prio];
  wpa_printf(MSG_DEBUG, "Priority group %d",
      ssid->priority);
  while (ssid) {
   wpa_printf(MSG_DEBUG, "   id=%d ssid='%s'",
       ssid->id,
       wpa_ssid_txt(ssid->ssid, ssid->ssid_len));
   ssid = ssid->pnext;
  }
 }
}
