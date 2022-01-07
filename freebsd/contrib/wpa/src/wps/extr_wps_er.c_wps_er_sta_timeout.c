
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_sta {int list; } ;


 int MSG_DEBUG ;
 int dl_list_del (int *) ;
 int wpa_printf (int ,char*) ;
 int wps_er_sta_free (struct wps_er_sta*) ;

__attribute__((used)) static void wps_er_sta_timeout(void *eloop_data, void *user_ctx)
{
 struct wps_er_sta *sta = eloop_data;
 wpa_printf(MSG_DEBUG, "WPS ER: STA entry timed out");
 dl_list_del(&sta->list);
 wps_er_sta_free(sta);
}
