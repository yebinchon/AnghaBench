
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_das_attrs {int dummy; } ;
struct hostapd_data {int wpa_auth; } ;


 int wpa_auth_radius_das_disconnect_pmksa (int ,struct radius_das_attrs*) ;

__attribute__((used)) static int hostapd_das_disconnect_pmksa(struct hostapd_data *hapd,
     struct radius_das_attrs *attr)
{
 if (!hapd->wpa_auth)
  return -1;
 return wpa_auth_radius_das_disconnect_pmksa(hapd->wpa_auth, attr);
}
