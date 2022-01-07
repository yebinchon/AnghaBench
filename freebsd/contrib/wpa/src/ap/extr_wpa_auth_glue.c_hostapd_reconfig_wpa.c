
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_auth_config {int dummy; } ;
struct hostapd_data {int wpa_auth; int iconf; int conf; } ;


 int hostapd_wpa_auth_conf (int ,int ,struct wpa_auth_config*) ;
 int wpa_reconfig (int ,struct wpa_auth_config*) ;

void hostapd_reconfig_wpa(struct hostapd_data *hapd)
{
 struct wpa_auth_config wpa_auth_conf;
 hostapd_wpa_auth_conf(hapd->conf, hapd->iconf, &wpa_auth_conf);
 wpa_reconfig(hapd->wpa_auth, &wpa_auth_conf);
}
