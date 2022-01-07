
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int MSG_DEBUG ;
 int hostapd_wps_for_each (struct hostapd_data*,int ,int *) ;
 int wpa_printf (int ,char*) ;
 int wps_ap_pin_disable ;

void hostapd_wps_ap_pin_disable(struct hostapd_data *hapd)
{
 wpa_printf(MSG_DEBUG, "WPS: Disabling AP PIN");
 hostapd_wps_for_each(hapd, wps_ap_pin_disable, ((void*)0));
}
