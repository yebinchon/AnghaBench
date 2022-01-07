
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int p2p_rx_action (int *,int const*,int const*,int const*,int ,int const*,size_t,int) ;

void wpas_p2p_rx_action(struct wpa_supplicant *wpa_s, const u8 *da,
   const u8 *sa, const u8 *bssid,
   u8 category, const u8 *data, size_t len, int freq)
{
 if (wpa_s->global->p2p_disabled)
  return;
 if (wpa_s->global->p2p == ((void*)0))
  return;

 p2p_rx_action(wpa_s->global->p2p, da, sa, bssid, category, data, len,
        freq);
}
