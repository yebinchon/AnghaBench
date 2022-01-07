
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int autoscan_deinit (struct wpa_supplicant*) ;

__attribute__((used)) static void wpa_supplicant_stop_autoscan(struct wpa_supplicant *wpa_s)
{
 autoscan_deinit(wpa_s);
}
