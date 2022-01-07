
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_used_freq_data {int freq; int flags; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int p2p; } ;


 int WPA_FREQ_USED_BY_INFRA_STATION ;
 int WPA_FREQ_USED_BY_P2P_CLIENT ;
 scalar_t__ p2p_supported_freq (int ,int) ;

__attribute__((used)) static int wpas_p2p_pick_best_used_freq(struct wpa_supplicant *wpa_s,
     struct wpa_used_freq_data *freqs,
     unsigned int num)
{
 unsigned int i, c;


 for (c = 0; c < num; c++)
  if (p2p_supported_freq(wpa_s->global->p2p, freqs[c].freq))
   break;

 if (c == num)
  return 0;


 for (i = c + 1; i < num; i++) {
  if (!p2p_supported_freq(wpa_s->global->p2p, freqs[i].freq))
   continue;






  if (freqs[i].flags & WPA_FREQ_USED_BY_INFRA_STATION) {
   c = i;
   break;
  }

  if ((freqs[i].flags & WPA_FREQ_USED_BY_P2P_CLIENT))
   c = i;
 }
 return freqs[c].freq;
}
