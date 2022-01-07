
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int WLAN_REASON_DEAUTH_LEAVING ;
 int hostapd_clear_wep (struct hostapd_data*) ;
 int hostapd_flush_old_stations (struct hostapd_data*,int ) ;
 int hostapd_free_stas (struct hostapd_data*) ;

__attribute__((used)) static void hostapd_bss_deinit_no_free(struct hostapd_data *hapd)
{
 hostapd_free_stas(hapd);
 hostapd_flush_old_stations(hapd, WLAN_REASON_DEAUTH_LEAVING);
 hostapd_clear_wep(hapd);
}
