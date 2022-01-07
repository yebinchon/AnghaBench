
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ last_tspecs_count; int * last_tspecs; } ;


 int MSG_DEBUG ;
 int os_free (int *) ;
 int wpa_printf (int ,char*) ;

void wmm_ac_clear_saved_tspecs(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->last_tspecs) {
  wpa_printf(MSG_DEBUG, "WMM AC: Clear saved tspecs");
  os_free(wpa_s->last_tspecs);
  wpa_s->last_tspecs = ((void*)0);
  wpa_s->last_tspecs_count = 0;
 }
}
