
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {scalar_t__** tspecs; } ;


 int TS_DIR_IDX_COUNT ;
 int WMM_AC_NUM ;

__attribute__((used)) static u8 wmm_ac_get_tspecs_count(struct wpa_supplicant *wpa_s)
{
 int ac, dir, tspecs_count = 0;

 for (ac = 0; ac < WMM_AC_NUM; ac++) {
  for (dir = 0; dir < TS_DIR_IDX_COUNT; dir++) {
   if (wpa_s->tspecs[ac][dir])
    tspecs_count++;
  }
 }

 return tspecs_count;
}
