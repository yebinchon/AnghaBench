
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_ap_pin_data {int timeout; int pin_txt; } ;
struct hostapd_data {int dummy; } ;


 int hostapd_wps_for_each (struct hostapd_data*,int ,struct wps_ap_pin_data*) ;
 int os_snprintf (int ,int,char*,char const*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int wps_ap_pin_set ;

int hostapd_wps_ap_pin_set(struct hostapd_data *hapd, const char *pin,
      int timeout)
{
 struct wps_ap_pin_data data;
 int ret;

 ret = os_snprintf(data.pin_txt, sizeof(data.pin_txt), "%s", pin);
 if (os_snprintf_error(sizeof(data.pin_txt), ret))
  return -1;
 data.timeout = timeout;
 return hostapd_wps_for_each(hapd, wps_ap_pin_set, &data);
}
