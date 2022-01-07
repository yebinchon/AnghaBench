
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int eapol; int wpa; } ;
struct wpa_ie_data {size_t num_pmkid; int * pmkid; } ;


 int MSG_DEBUG ;
 size_t PMKID_LEN ;
 int eapol_sm_notify_pmkid_attempt (int ) ;
 int pmksa_cache_set_current (int ,int *,int *,int *,int ,int *,int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,char*) ;
 scalar_t__ wpa_sm_parse_own_wpa_ie (int ,struct wpa_ie_data*) ;

__attribute__((used)) static void wpa_find_assoc_pmkid(struct wpa_supplicant *wpa_s)
{
 struct wpa_ie_data ie;
 int pmksa_set = -1;
 size_t i;

 if (wpa_sm_parse_own_wpa_ie(wpa_s->wpa, &ie) < 0 ||
     ie.pmkid == ((void*)0))
  return;

 for (i = 0; i < ie.num_pmkid; i++) {
  pmksa_set = pmksa_cache_set_current(wpa_s->wpa,
          ie.pmkid + i * PMKID_LEN,
          ((void*)0), ((void*)0), 0, ((void*)0), 0);
  if (pmksa_set == 0) {
   eapol_sm_notify_pmkid_attempt(wpa_s->eapol);
   break;
  }
 }

 wpa_dbg(wpa_s, MSG_DEBUG, "RSN: PMKID from assoc IE %sfound from "
  "PMKSA cache", pmksa_set == 0 ? "" : "not ");
}
