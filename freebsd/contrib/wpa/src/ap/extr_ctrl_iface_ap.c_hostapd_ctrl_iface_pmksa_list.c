
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int wpa_auth; } ;


 int wpa_auth_pmksa_list (int ,char*,size_t) ;

int hostapd_ctrl_iface_pmksa_list(struct hostapd_data *hapd, char *buf,
      size_t len)
{
 return wpa_auth_pmksa_list(hapd->wpa_auth, buf, len);
}
