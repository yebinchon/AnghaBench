
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ ifmsh; scalar_t__ ap_iface; } ;
struct dfs_event {int freq; } ;


 int wpas_ap_event_dfs_cac_started (struct wpa_supplicant*,struct dfs_event*) ;
 int wpas_auth_timeout_restart (struct wpa_supplicant*,unsigned int) ;
 unsigned int wpas_event_cac_ms (struct wpa_supplicant*,int ) ;

__attribute__((used)) static void wpas_event_dfs_cac_started(struct wpa_supplicant *wpa_s,
           struct dfs_event *radar)
{





 {
  unsigned int cac_time = wpas_event_cac_ms(wpa_s, radar->freq);

  cac_time /= 1000;
  if (!cac_time)
   cac_time = 10 * 60;


  wpas_auth_timeout_restart(wpa_s, cac_time);
 }
}
