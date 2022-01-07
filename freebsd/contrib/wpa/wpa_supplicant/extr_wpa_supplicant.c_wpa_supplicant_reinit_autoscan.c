
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wpa_state; } ;


 scalar_t__ WPA_DISCONNECTED ;
 scalar_t__ WPA_SCANNING ;
 int autoscan_deinit (struct wpa_supplicant*) ;
 int wpa_supplicant_start_autoscan (struct wpa_supplicant*) ;

void wpa_supplicant_reinit_autoscan(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->wpa_state == WPA_DISCONNECTED ||
     wpa_s->wpa_state == WPA_SCANNING) {
  autoscan_deinit(wpa_s);
  wpa_supplicant_start_autoscan(wpa_s);
 }
}
