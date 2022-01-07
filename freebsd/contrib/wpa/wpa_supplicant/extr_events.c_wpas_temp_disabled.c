
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int dummy; } ;
struct TYPE_2__ {scalar_t__ sec; } ;
struct wpa_ssid {TYPE_1__ disabled_until; } ;
struct os_reltime {scalar_t__ sec; } ;


 int os_get_reltime (struct os_reltime*) ;
 int wpas_clear_temp_disabled (struct wpa_supplicant*,struct wpa_ssid*,int ) ;

int wpas_temp_disabled(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid)
{
 struct os_reltime now;

 if (ssid == ((void*)0) || ssid->disabled_until.sec == 0)
  return 0;

 os_get_reltime(&now);
 if (ssid->disabled_until.sec > now.sec)
  return ssid->disabled_until.sec - now.sec;

 wpas_clear_temp_disabled(wpa_s, ssid, 0);

 return 0;
}
