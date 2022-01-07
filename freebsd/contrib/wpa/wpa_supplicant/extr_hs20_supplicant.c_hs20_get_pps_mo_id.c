
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_ssid {int update_identifier; struct wpa_cred* parent_cred; } ;
struct wpa_cred {int update_identifier; struct wpa_cred* next; } ;
struct TYPE_2__ {struct wpa_cred* cred; } ;



int hs20_get_pps_mo_id(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid)
{
 struct wpa_cred *cred;

 if (ssid == ((void*)0))
  return 0;

 if (ssid->update_identifier)
  return ssid->update_identifier;

 if (ssid->parent_cred == ((void*)0))
  return 0;

 for (cred = wpa_s->conf->cred; cred; cred = cred->next) {
  if (ssid->parent_cred == cred)
   return cred->update_identifier;
 }

 return 0;
}
