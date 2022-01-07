
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wpa; } ;


 int wpa_sm_pmksa_cache_flush (int ,int *) ;
 int wpas_ap_pmksa_cache_flush (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_ctrl_iface_pmksa_flush(struct wpa_supplicant *wpa_s)
{
 wpa_sm_pmksa_cache_flush(wpa_s->wpa, ((void*)0));



}
