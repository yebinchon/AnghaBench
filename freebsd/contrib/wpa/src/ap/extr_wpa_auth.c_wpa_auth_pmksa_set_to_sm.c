
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_state_machine {struct rsn_pmksa_cache_entry* pmksa; } ;
struct wpa_authenticator {int * dot11RSNAPMKIDUsed; } ;
struct rsn_pmksa_cache_entry {int pmkid; int pmk; } ;


 int PMKID_LEN ;
 int PMK_LEN ;
 int os_memcpy (int *,int ,int ) ;

void wpa_auth_pmksa_set_to_sm(struct rsn_pmksa_cache_entry *pmksa,
         struct wpa_state_machine *sm,
         struct wpa_authenticator *wpa_auth,
         u8 *pmkid, u8 *pmk)
{
 if (!sm)
  return;

 sm->pmksa = pmksa;
 os_memcpy(pmk, pmksa->pmk, PMK_LEN);
 os_memcpy(pmkid, pmksa->pmkid, PMKID_LEN);
 os_memcpy(wpa_auth->dot11RSNAPMKIDUsed, pmksa->pmkid, PMKID_LEN);
}
