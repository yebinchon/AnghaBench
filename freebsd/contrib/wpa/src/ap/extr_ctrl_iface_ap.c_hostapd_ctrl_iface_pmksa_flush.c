
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int wpa_auth; } ;


 int wpa_auth_pmksa_flush (int ) ;

void hostapd_ctrl_iface_pmksa_flush(struct hostapd_data *hapd)
{
 wpa_auth_pmksa_flush(hapd->wpa_auth);
}
