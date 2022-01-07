
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int kck_len; int kck; } ;
struct wpa_state_machine {scalar_t__ wpa; int wpa_key_mgmt; int addr; TYPE_3__* wpa_auth; TYPE_2__ PTK; } ;
struct eapol_state_machine {int dummy; } ;
struct TYPE_4__ {scalar_t__ disable_pmksa_caching; } ;
struct TYPE_6__ {int addr; int pmksa; TYPE_1__ conf; } ;


 int MSG_DEBUG ;
 int PMK_LEN ;
 unsigned int PMK_LEN_SUITE_B_192 ;
 scalar_t__ WPA_VERSION_WPA2 ;
 scalar_t__ pmksa_cache_auth_add (int ,int const*,unsigned int,int *,int ,int ,int ,int ,int,struct eapol_state_machine*,int ) ;
 int wpa_hexdump_key (int ,char*,int const*,unsigned int) ;
 scalar_t__ wpa_key_mgmt_ft (int ) ;
 scalar_t__ wpa_key_mgmt_sha384 (int ) ;
 scalar_t__ wpa_key_mgmt_wpa_ieee8021x (int ) ;

int wpa_auth_pmksa_add(struct wpa_state_machine *sm, const u8 *pmk,
         unsigned int pmk_len,
         int session_timeout, struct eapol_state_machine *eapol)
{
 if (sm == ((void*)0) || sm->wpa != WPA_VERSION_WPA2 ||
     sm->wpa_auth->conf.disable_pmksa_caching)
  return -1;
 if (wpa_key_mgmt_sha384(sm->wpa_key_mgmt)) {
  if (pmk_len > PMK_LEN_SUITE_B_192)
   pmk_len = PMK_LEN_SUITE_B_192;
 } else if (pmk_len > PMK_LEN) {
  pmk_len = PMK_LEN;
 }

 wpa_hexdump_key(MSG_DEBUG, "RSN: Cache PMK", pmk, pmk_len);
 if (pmksa_cache_auth_add(sm->wpa_auth->pmksa, pmk, pmk_len, ((void*)0),
     sm->PTK.kck, sm->PTK.kck_len,
     sm->wpa_auth->addr, sm->addr, session_timeout,
     eapol, sm->wpa_key_mgmt))
  return 0;

 return -1;
}
