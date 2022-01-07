
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {int num_multichan_concurrent; TYPE_2__* global; TYPE_1__* conf; } ;
struct TYPE_4__ {int * p2p; struct wpa_supplicant* p2p_init_wpa_s; scalar_t__ p2p_disabled; } ;
struct TYPE_3__ {scalar_t__ p2p_ignore_shared_freq; } ;


 int MSG_DEBUG ;
 int p2p_set_own_freq_preference (int *,int) ;
 int wpa_printf (int ,char*,int) ;
 scalar_t__ wpas_p2p_num_unused_channels (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_p2p_set_own_freq_preference(struct wpa_supplicant *wpa_s,
          int freq)
{
 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return;


 wpa_s = wpa_s->global->p2p_init_wpa_s;

 if (wpa_s->conf->p2p_ignore_shared_freq &&
     freq > 0 && wpa_s->num_multichan_concurrent > 1 &&
     wpas_p2p_num_unused_channels(wpa_s) > 0) {
  wpa_printf(MSG_DEBUG, "P2P: Ignore own channel preference %d MHz due to p2p_ignore_shared_freq=1 configuration",
      freq);
  freq = 0;
 }
 p2p_set_own_freq_preference(wpa_s->global->p2p, freq);
}
