
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; scalar_t__ p2p_mgmt; } ;
struct wpa_ssid {struct wpa_ssid* next; } ;
struct TYPE_2__ {scalar_t__ auto_interworking; scalar_t__ interworking; scalar_t__ cred; struct wpa_ssid* ssid; } ;


 int MSG_DEBUG ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int) ;
 int wpas_network_disabled (struct wpa_supplicant*,struct wpa_ssid*) ;

int wpa_supplicant_enabled_networks(struct wpa_supplicant *wpa_s)
{
 struct wpa_ssid *ssid = wpa_s->conf->ssid;
 int count = 0, disabled = 0;

 if (wpa_s->p2p_mgmt)
  return 0;

 while (ssid) {
  if (!wpas_network_disabled(wpa_s, ssid))
   count++;
  else
   disabled++;
  ssid = ssid->next;
 }
 if (wpa_s->conf->cred && wpa_s->conf->interworking &&
     wpa_s->conf->auto_interworking)
  count++;
 if (count == 0 && disabled > 0) {
  wpa_dbg(wpa_s, MSG_DEBUG, "No enabled networks (%d disabled "
   "networks)", disabled);
 }
 return count;
}
