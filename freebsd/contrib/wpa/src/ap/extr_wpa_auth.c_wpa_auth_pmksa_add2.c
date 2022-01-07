
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
 scalar_t__ pmksa_cache_auth_add (int ,int const*,size_t,int const*,int *,int ,int ,int const*,int,int *,int) ;
 int wpa_hexdump_key (int ,char*,int const*,int ) ;

int wpa_auth_pmksa_add2(struct wpa_authenticator *wpa_auth, const u8 *addr,
   const u8 *pmk, size_t pmk_len, const u8 *pmkid,
   int session_timeout, int akmp)
{
 if (wpa_auth->conf.disable_pmksa_caching)
  return -1;

 wpa_hexdump_key(MSG_DEBUG, "RSN: Cache PMK (2)", pmk, PMK_LEN);
 if (pmksa_cache_auth_add(wpa_auth->pmksa, pmk, pmk_len, pmkid,
     ((void*)0), 0, wpa_auth->addr, addr, session_timeout,
     ((void*)0), akmp))
  return 0;

 return -1;
}
