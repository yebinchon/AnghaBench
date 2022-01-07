
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wmm_ac_assoc_info; } ;


 int MSG_DEBUG ;
 int wmm_ac_deinit (struct wpa_supplicant*) ;
 int wpa_printf (int ,char*) ;

void wmm_ac_notify_disassoc(struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->wmm_ac_assoc_info)
  return;

 wmm_ac_deinit(wpa_s);
 wpa_printf(MSG_DEBUG, "WMM AC: WMM AC is disabled");
}
