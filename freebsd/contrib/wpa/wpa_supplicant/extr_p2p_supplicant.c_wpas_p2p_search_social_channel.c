
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int p2p; scalar_t__ p2p_24ghz_social_channels; } ;


 int p2p_supported_freq (int ,int) ;

__attribute__((used)) static int wpas_p2p_search_social_channel(struct wpa_supplicant *wpa_s,
       int freq)
{
 if (wpa_s->global->p2p_24ghz_social_channels &&
     (freq == 2412 || freq == 2437 || freq == 2462)) {





  return 1;
 }
 return p2p_supported_freq(wpa_s->global->p2p, freq);
}
