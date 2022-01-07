
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct wmm_params {int dummy; } ;


 int MSG_DEBUG ;
 scalar_t__ wmm_ac_init (struct wpa_supplicant*,int const*,size_t,struct wmm_params const*) ;
 int wpa_printf (int ,char*) ;

void wmm_ac_notify_assoc(struct wpa_supplicant *wpa_s, const u8 *ies,
    size_t ies_len, const struct wmm_params *wmm_params)
{
 if (wmm_ac_init(wpa_s, ies, ies_len, wmm_params))
  return;

 wpa_printf(MSG_DEBUG,
     "WMM AC: Valid WMM association, WMM AC is enabled");
}
