
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct dpp_pkex {int freq; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 int wpas_dpp_allow_ir (struct wpa_supplicant*,int) ;

__attribute__((used)) static int wpas_dpp_pkex_next_channel(struct wpa_supplicant *wpa_s,
          struct dpp_pkex *pkex)
{
 if (pkex->freq == 2437)
  pkex->freq = 5745;
 else if (pkex->freq == 5745)
  pkex->freq = 5220;
 else if (pkex->freq == 5220)
  pkex->freq = 60480;
 else
  return -1;

 if (wpas_dpp_allow_ir(wpa_s, pkex->freq) == 1) {
  wpa_printf(MSG_DEBUG, "DPP: Try to initiate on %u MHz",
      pkex->freq);
  return 0;
 }


 return wpas_dpp_pkex_next_channel(wpa_s, pkex);
}
