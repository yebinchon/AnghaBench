
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * wmm_ac_assoc_info; } ;


 int TS_DIR_IDX_ALL ;
 int WMM_AC_NUM ;
 int os_free (int *) ;
 int wmm_ac_del_req (struct wpa_supplicant*,int) ;
 int wmm_ac_del_ts (struct wpa_supplicant*,int,int ) ;

__attribute__((used)) static void wmm_ac_deinit(struct wpa_supplicant *wpa_s)
{
 int i;

 for (i = 0; i < WMM_AC_NUM; i++)
  wmm_ac_del_ts(wpa_s, i, TS_DIR_IDX_ALL);


 wmm_ac_del_req(wpa_s, 1);

 os_free(wpa_s->wmm_ac_assoc_info);
 wpa_s->wmm_ac_assoc_info = ((void*)0);
}
