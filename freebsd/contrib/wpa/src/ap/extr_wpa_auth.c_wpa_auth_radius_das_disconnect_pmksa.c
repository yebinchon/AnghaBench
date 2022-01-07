
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_authenticator {int pmksa; } ;
struct radius_das_attrs {int dummy; } ;


 int pmksa_cache_auth_radius_das_disconnect (int ,struct radius_das_attrs*) ;

int wpa_auth_radius_das_disconnect_pmksa(struct wpa_authenticator *wpa_auth,
      struct radius_das_attrs *attr)
{
 return pmksa_cache_auth_radius_das_disconnect(wpa_auth->pmksa, attr);
}
