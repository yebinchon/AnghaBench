
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ ifmsh; scalar_t__ ap_iface; } ;
struct dfs_event {int dummy; } ;


 int wpas_ap_event_dfs_cac_finished (struct wpa_supplicant*,struct dfs_event*) ;
 int wpas_auth_timeout_restart (struct wpa_supplicant*,int ) ;

__attribute__((used)) static void wpas_event_dfs_cac_finished(struct wpa_supplicant *wpa_s,
     struct dfs_event *radar)
{





 {


  wpas_auth_timeout_restart(wpa_s, 0);
 }
}
