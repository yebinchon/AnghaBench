
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ fetch_osu_icon_in_progress; scalar_t__ fetch_osu_info; scalar_t__ network_select; scalar_t__ fetch_osu_waiting_scan; } ;


 int MSG_DEBUG ;
 int interworking_stop_fetch_anqp (struct wpa_supplicant*) ;
 int wpa_printf (int ,char*) ;

void hs20_cancel_fetch_osu(struct wpa_supplicant *wpa_s)
{
 wpa_printf(MSG_DEBUG, "Cancel OSU fetch");
 interworking_stop_fetch_anqp(wpa_s);
 wpa_s->fetch_osu_waiting_scan = 0;
 wpa_s->network_select = 0;
 wpa_s->fetch_osu_info = 0;
 wpa_s->fetch_osu_icon_in_progress = 0;
}
