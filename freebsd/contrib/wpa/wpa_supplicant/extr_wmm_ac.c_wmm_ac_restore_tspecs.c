
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {unsigned int last_tspecs_count; int * last_tspecs; int bssid; int wmm_ac_assoc_info; } ;


 int MSG_DEBUG ;
 int wmm_ac_add_ts (struct wpa_supplicant*,int ,int *) ;
 int wpa_printf (int ,char*,unsigned int) ;

int wmm_ac_restore_tspecs(struct wpa_supplicant *wpa_s)
{
 unsigned int i;

 if (!wpa_s->wmm_ac_assoc_info || !wpa_s->last_tspecs_count)
  return 0;

 wpa_printf(MSG_DEBUG, "WMM AC: Restore %u saved tspecs",
     wpa_s->last_tspecs_count);

 for (i = 0; i < wpa_s->last_tspecs_count; i++)
  wmm_ac_add_ts(wpa_s, wpa_s->bssid, &wpa_s->last_tspecs[i]);

 return 0;
}
