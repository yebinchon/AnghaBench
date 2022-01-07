
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {size_t num_bss; int wait_channel_update; struct hostapd_data** bss; int * phy; scalar_t__ driver_ap_teardown; } ;
struct hostapd_data {TYPE_1__* iconf; int drv_priv; int driver; } ;
struct TYPE_2__ {scalar_t__* country; } ;


 int HAPD_IFACE_COUNTRY_UPDATE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int channel_list_update_timeout ;
 int eloop_register_timeout (int,int ,int ,struct hostapd_iface*,int *) ;
 char* hostapd_drv_get_radio_name (struct hostapd_data*) ;
 scalar_t__ hostapd_get_country (struct hostapd_data*,char*) ;
 scalar_t__ hostapd_set_country (struct hostapd_data*,char*) ;
 int hostapd_set_state (struct hostapd_iface*,int ) ;
 scalar_t__ hostapd_validate_bssid_configuration (struct hostapd_iface*) ;
 int os_memcpy (char*,scalar_t__*,int) ;
 int os_strlcpy (int *,char const*,int) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 int setup_interface2 (struct hostapd_iface*) ;
 scalar_t__ start_ctrl_iface (struct hostapd_iface*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int setup_interface(struct hostapd_iface *iface)
{
 struct hostapd_data *hapd = iface->bss[0];
 size_t i;
 iface->driver_ap_teardown = 0;

 if (!iface->phy[0]) {
  const char *phy = hostapd_drv_get_radio_name(hapd);
  if (phy) {
   wpa_printf(MSG_DEBUG, "phy: %s", phy);
   os_strlcpy(iface->phy, phy, sizeof(iface->phy));
  }
 }





 for (i = 1; i < iface->num_bss; i++) {
  iface->bss[i]->driver = hapd->driver;
  iface->bss[i]->drv_priv = hapd->drv_priv;
 }

 if (hostapd_validate_bssid_configuration(iface))
  return -1;






 if (start_ctrl_iface(iface))
  return -1;

 if (hapd->iconf->country[0] && hapd->iconf->country[1]) {
  char country[4], previous_country[4];

  hostapd_set_state(iface, HAPD_IFACE_COUNTRY_UPDATE);
  if (hostapd_get_country(hapd, previous_country) < 0)
   previous_country[0] = '\0';

  os_memcpy(country, hapd->iconf->country, 3);
  country[3] = '\0';
  if (hostapd_set_country(hapd, country) < 0) {
   wpa_printf(MSG_ERROR, "Failed to set country code");
   return -1;
  }

  wpa_printf(MSG_DEBUG, "Previous country code %s, new country code %s",
      previous_country, country);

  if (os_strncmp(previous_country, country, 2) != 0) {
   wpa_printf(MSG_DEBUG, "Continue interface setup after channel list update");
   iface->wait_channel_update = 1;
   eloop_register_timeout(5, 0,
            channel_list_update_timeout,
            iface, ((void*)0));
   return 0;
  }
 }

 return setup_interface2(iface);
}
