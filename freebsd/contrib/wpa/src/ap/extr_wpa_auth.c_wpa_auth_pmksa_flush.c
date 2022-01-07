
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_authenticator {scalar_t__ pmksa; } ;


 int pmksa_cache_auth_flush (scalar_t__) ;

void wpa_auth_pmksa_flush(struct wpa_authenticator *wpa_auth)
{
 if (wpa_auth && wpa_auth->pmksa)
  pmksa_cache_auth_flush(wpa_auth->pmksa);
}
