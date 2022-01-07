
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_authenticator {int pmksa; } ;


 int pmksa_cache_auth_list (int ,char*,size_t) ;

int wpa_auth_pmksa_list(struct wpa_authenticator *wpa_auth, char *buf,
   size_t len)
{
 if (!wpa_auth || !wpa_auth->pmksa)
  return 0;
 return pmksa_cache_auth_list(wpa_auth->pmksa, buf, len);
}
