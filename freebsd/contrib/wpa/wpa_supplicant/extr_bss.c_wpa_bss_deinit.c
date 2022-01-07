
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int wpa_bss_flush (struct wpa_supplicant*) ;

void wpa_bss_deinit(struct wpa_supplicant *wpa_s)
{
 wpa_bss_flush(wpa_s);
}
