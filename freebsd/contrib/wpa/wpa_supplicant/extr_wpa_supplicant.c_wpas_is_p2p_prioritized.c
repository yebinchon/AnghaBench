
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {scalar_t__ conc_pref; } ;


 scalar_t__ WPA_CONC_PREF_P2P ;
 scalar_t__ WPA_CONC_PREF_STA ;

int wpas_is_p2p_prioritized(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->global->conc_pref == WPA_CONC_PREF_P2P)
  return 1;
 if (wpa_s->global->conc_pref == WPA_CONC_PREF_STA)
  return 0;
 return -1;
}
