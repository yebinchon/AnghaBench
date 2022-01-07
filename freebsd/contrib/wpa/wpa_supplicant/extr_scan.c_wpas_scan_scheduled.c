
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int eloop_is_timeout_registered (int ,struct wpa_supplicant*,int *) ;
 int wpa_supplicant_scan ;

int wpas_scan_scheduled(struct wpa_supplicant *wpa_s)
{
 return eloop_is_timeout_registered(wpa_supplicant_scan, wpa_s, ((void*)0));
}
