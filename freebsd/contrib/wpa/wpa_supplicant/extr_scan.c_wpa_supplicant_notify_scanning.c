
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int scanning; } ;


 int wpas_notify_scanning (struct wpa_supplicant*) ;

void wpa_supplicant_notify_scanning(struct wpa_supplicant *wpa_s,
        int scanning)
{
 if (wpa_s->scanning != scanning) {
  wpa_s->scanning = scanning;
  wpas_notify_scanning(wpa_s);
 }
}
