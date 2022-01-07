
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct hostapd_iface {struct hostapd_data** bss; } ;
struct hostapd_data {scalar_t__ num_plinks; } ;


 int ap_for_each_sta (struct hostapd_data*,int ,struct wpa_supplicant*) ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int hostapd_free_stas (struct hostapd_data*) ;
 int mesh_mpm_plink_close ;
 int peer_add_timer ;

void mesh_mpm_deinit(struct wpa_supplicant *wpa_s, struct hostapd_iface *ifmsh)
{
 struct hostapd_data *hapd = ifmsh->bss[0];


 ap_for_each_sta(hapd, mesh_mpm_plink_close, wpa_s);

 hapd->num_plinks = 0;
 hostapd_free_stas(hapd);
 eloop_cancel_timeout(peer_add_timer, wpa_s, ((void*)0));
}
