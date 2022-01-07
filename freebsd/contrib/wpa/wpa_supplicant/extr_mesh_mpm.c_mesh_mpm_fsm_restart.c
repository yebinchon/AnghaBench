
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* ifmsh; } ;
struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct TYPE_2__ {struct hostapd_data** bss; } ;


 int ap_free_sta (struct hostapd_data*,struct sta_info*) ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,struct sta_info*) ;
 int plink_timer ;

__attribute__((used)) static void mesh_mpm_fsm_restart(struct wpa_supplicant *wpa_s,
     struct sta_info *sta)
{
 struct hostapd_data *hapd = wpa_s->ifmsh->bss[0];

 eloop_cancel_timeout(plink_timer, wpa_s, sta);

 ap_free_sta(hapd, sta);
}
