
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_ssid {scalar_t__ disabled; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; scalar_t__ cred; scalar_t__ interworking; scalar_t__ auto_interworking; } ;


 int wpas_temp_disabled (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static int wpas_reenabled_network_time(struct wpa_supplicant *wpa_s)
{
 struct wpa_ssid *ssid;
 int disabled_for, res = 0;







 for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
  if (ssid->disabled)
   continue;

  disabled_for = wpas_temp_disabled(wpa_s, ssid);
  if (!disabled_for)
   return 0;

  if (!res || disabled_for < res)
   res = disabled_for;
 }

 return res;
}
