
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_scan ;

void wpa_supplicant_cancel_scan(struct wpa_supplicant *wpa_s)
{
 wpa_dbg(wpa_s, MSG_DEBUG, "Cancelling scan request");
 eloop_cancel_timeout(wpa_supplicant_scan, wpa_s, ((void*)0));
}
