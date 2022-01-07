
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {struct hostapd_bss_config* conf; } ;
struct TYPE_2__ {int wpa_psk; } ;
struct hostapd_bss_config {TYPE_1__ ssid; } ;


 int MSG_ERROR ;
 int ap_for_each_sta (struct hostapd_data*,int ,int *) ;
 int hostapd_config_clear_wpa_psk (int *) ;
 int hostapd_ctrl_iface_kick_mismatch_psk_sta_iter ;
 int hostapd_setup_wpa_psk (struct hostapd_bss_config*) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int hostapd_ctrl_iface_reload_wpa_psk(struct hostapd_data *hapd)
{
 struct hostapd_bss_config *conf = hapd->conf;
 int err;

 hostapd_config_clear_wpa_psk(&conf->ssid.wpa_psk);

 err = hostapd_setup_wpa_psk(conf);
 if (err < 0) {
  wpa_printf(MSG_ERROR, "Reloading WPA-PSK passwords failed: %d",
      err);
  return -1;
 }

 ap_for_each_sta(hapd, hostapd_ctrl_iface_kick_mismatch_psk_sta_iter,
   ((void*)0));

 return 0;
}
