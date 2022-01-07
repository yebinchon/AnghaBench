
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_ap_pin_data {int timeout; int pin_txt; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {char const* ap_pin; } ;


 int hostapd_wps_for_each (struct hostapd_data*,int ,struct wps_ap_pin_data*) ;
 int os_snprintf (int ,int,char*,unsigned int) ;
 int wps_ap_pin_set ;
 scalar_t__ wps_generate_pin (unsigned int*) ;

const char * hostapd_wps_ap_pin_random(struct hostapd_data *hapd, int timeout)
{
 unsigned int pin;
 struct wps_ap_pin_data data;

 if (wps_generate_pin(&pin) < 0)
  return ((void*)0);
 os_snprintf(data.pin_txt, sizeof(data.pin_txt), "%08u", pin);
 data.timeout = timeout;
 hostapd_wps_for_each(hapd, wps_ap_pin_set, &data);
 return hapd->conf->ap_pin;
}
