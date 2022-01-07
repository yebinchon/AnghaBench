
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ disable_pmksa_caching; } ;
struct wpa_authenticator {int addr; int pmksa; TYPE_1__ conf; } ;


 int MSG_DEBUG ;
 int PMK_LEN ;
 int WPA_KEY_MGMT_SAE ;
 scalar_t__ pmksa_cache_auth_add (int ,int const*,int ,int const*,int *,int ,int ,int const*,int ,int *,int ) ;
 int wpa_hexdump_key (int ,char*,int const*,int ) ;

int wpa_auth_pmksa_add_sae(struct wpa_authenticator *wpa_auth, const u8 *addr,
      const u8 *pmk, const u8 *pmkid)
{
 if (wpa_auth->conf.disable_pmksa_caching)
  return -1;

 wpa_hexdump_key(MSG_DEBUG, "RSN: Cache PMK from SAE", pmk, PMK_LEN);
 if (pmksa_cache_auth_add(wpa_auth->pmksa, pmk, PMK_LEN, pmkid,
     ((void*)0), 0,
     wpa_auth->addr, addr, 0, ((void*)0),
     WPA_KEY_MGMT_SAE))
  return 0;

 return -1;
}
