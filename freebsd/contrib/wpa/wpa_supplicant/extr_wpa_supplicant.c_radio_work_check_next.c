
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ ext_work_in_progress; struct wpa_radio* radio; } ;
struct wpa_radio {int work; } ;


 int MSG_DEBUG ;
 scalar_t__ dl_list_empty (int *) ;
 int eloop_cancel_timeout (int ,struct wpa_radio*,int *) ;
 int eloop_register_timeout (int ,int ,int ,struct wpa_radio*,int *) ;
 int radio_start_next_work ;
 int wpa_printf (int ,char*) ;

void radio_work_check_next(struct wpa_supplicant *wpa_s)
{
 struct wpa_radio *radio = wpa_s->radio;

 if (dl_list_empty(&radio->work))
  return;
 if (wpa_s->ext_work_in_progress) {
  wpa_printf(MSG_DEBUG,
      "External radio work in progress - delay start of pending item");
  return;
 }
 eloop_cancel_timeout(radio_start_next_work, radio, ((void*)0));
 eloop_register_timeout(0, 0, radio_start_next_work, radio, ((void*)0));
}
