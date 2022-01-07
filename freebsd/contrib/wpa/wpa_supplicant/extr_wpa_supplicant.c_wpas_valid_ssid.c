
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_ssid {struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;



__attribute__((used)) static int wpas_valid_ssid(struct wpa_supplicant *wpa_s,
      struct wpa_ssid *test_ssid)
{
 struct wpa_ssid *ssid;

 for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
  if (ssid == test_ssid)
   return 1;
 }

 return 0;
}
