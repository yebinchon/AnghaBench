
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_authenticator {int pmksa; } ;
struct rsn_pmksa_cache_entry {int dummy; } ;


 struct rsn_pmksa_cache_entry* pmksa_cache_auth_get (int ,int const*,int const*) ;

struct rsn_pmksa_cache_entry *
wpa_auth_pmksa_get(struct wpa_authenticator *wpa_auth, const u8 *sta_addr,
     const u8 *pmkid)
{
 if (!wpa_auth || !wpa_auth->pmksa)
  return ((void*)0);
 return pmksa_cache_auth_get(wpa_auth->pmksa, sta_addr, pmkid);
}
