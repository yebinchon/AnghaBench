
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_bss {int dummy; } ;



__attribute__((used)) static inline int wpas_wps_ssid_wildcard_ok(struct wpa_supplicant *wpa_s,
         struct wpa_ssid *ssid,
         struct wpa_bss *bss)
{
 return 0;
}
