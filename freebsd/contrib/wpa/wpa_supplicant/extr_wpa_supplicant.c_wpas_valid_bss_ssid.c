
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_bss {int dummy; } ;


 int wpas_valid_bss (struct wpa_supplicant*,struct wpa_bss*) ;
 scalar_t__ wpas_valid_ssid (struct wpa_supplicant*,struct wpa_ssid*) ;

int wpas_valid_bss_ssid(struct wpa_supplicant *wpa_s, struct wpa_bss *test_bss,
   struct wpa_ssid *test_ssid)
{
 if (test_bss && !wpas_valid_bss(wpa_s, test_bss))
  return 0;

 return test_ssid == ((void*)0) || wpas_valid_ssid(wpa_s, test_ssid);
}
