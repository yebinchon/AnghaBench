
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ last_scan_res_used; int bss_update_idx; } ;


 int MSG_DEBUG ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int ) ;

void wpa_bss_update_start(struct wpa_supplicant *wpa_s)
{
 wpa_s->bss_update_idx++;
 wpa_dbg(wpa_s, MSG_DEBUG, "BSS: Start scan result update %u",
  wpa_s->bss_update_idx);
 wpa_s->last_scan_res_used = 0;
}
