
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_authenticator {int addr; int pmksa; } ;
struct eapol_state_machine {int dummy; } ;


 int MSG_DEBUG ;
 int WPA_KEY_MGMT_IEEE8021X ;
 scalar_t__ pmksa_cache_auth_add (int ,int const*,size_t,int *,int *,int ,int ,int const*,int,struct eapol_state_machine*,int ) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;

int wpa_auth_pmksa_add_preauth(struct wpa_authenticator *wpa_auth,
          const u8 *pmk, size_t len, const u8 *sta_addr,
          int session_timeout,
          struct eapol_state_machine *eapol)
{
 if (wpa_auth == ((void*)0))
  return -1;

 wpa_hexdump_key(MSG_DEBUG, "RSN: Cache PMK from preauth", pmk, len);
 if (pmksa_cache_auth_add(wpa_auth->pmksa, pmk, len, ((void*)0),
     ((void*)0), 0,
     wpa_auth->addr,
     sta_addr, session_timeout, eapol,
     WPA_KEY_MGMT_IEEE8021X))
  return 0;

 return -1;
}
