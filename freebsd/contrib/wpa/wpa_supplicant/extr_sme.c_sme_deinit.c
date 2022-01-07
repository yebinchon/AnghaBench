
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int sme_assoc_timer ;
 int sme_auth_timer ;
 int sme_clear_on_disassoc (struct wpa_supplicant*) ;
 int sme_obss_scan_timeout ;

void sme_deinit(struct wpa_supplicant *wpa_s)
{
 sme_clear_on_disassoc(wpa_s);

 eloop_cancel_timeout(sme_assoc_timer, wpa_s, ((void*)0));
 eloop_cancel_timeout(sme_auth_timer, wpa_s, ((void*)0));
 eloop_cancel_timeout(sme_obss_scan_timeout, wpa_s, ((void*)0));
}
