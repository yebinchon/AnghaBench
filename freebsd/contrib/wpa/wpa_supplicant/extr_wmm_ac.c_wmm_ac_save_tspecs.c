
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int last_tspecs_count; int *** tspecs; int * last_tspecs; int wmm_ac_assoc_info; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int TS_DIR_IDX_COUNT ;
 int WMM_AC_NUM ;
 int * os_calloc (int,int) ;
 int wmm_ac_clear_saved_tspecs (struct wpa_supplicant*) ;
 int wmm_ac_get_tspecs_count (struct wpa_supplicant*) ;
 int wpa_printf (int ,char*,...) ;

void wmm_ac_save_tspecs(struct wpa_supplicant *wpa_s)
{
 int ac, dir, tspecs_count;

 wpa_printf(MSG_DEBUG, "WMM AC: Save last configured tspecs");

 if (!wpa_s->wmm_ac_assoc_info)
  return;

 tspecs_count = wmm_ac_get_tspecs_count(wpa_s);
 if (!tspecs_count) {
  wpa_printf(MSG_DEBUG, "WMM AC: No configured TSPECs");
  return;
 }

 wpa_printf(MSG_DEBUG, "WMM AC: Saving tspecs");

 wmm_ac_clear_saved_tspecs(wpa_s);
 wpa_s->last_tspecs = os_calloc(tspecs_count,
           sizeof(*wpa_s->last_tspecs));
 if (!wpa_s->last_tspecs) {
  wpa_printf(MSG_ERROR, "WMM AC: Failed to save tspecs!");
  return;
 }

 for (ac = 0; ac < WMM_AC_NUM; ac++) {
  for (dir = 0; dir < TS_DIR_IDX_COUNT; dir++) {
   if (!wpa_s->tspecs[ac][dir])
    continue;

   wpa_s->last_tspecs[wpa_s->last_tspecs_count++] =
    *wpa_s->tspecs[ac][dir];
  }
 }

 wpa_printf(MSG_DEBUG, "WMM AC: Successfully saved %d TSPECs",
     wpa_s->last_tspecs_count);
}
