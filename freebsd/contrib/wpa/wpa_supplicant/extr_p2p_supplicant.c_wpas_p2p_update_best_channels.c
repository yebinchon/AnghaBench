
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct p2p_data {int dummy; } ;
struct TYPE_2__ {struct p2p_data* p2p; } ;


 int p2p_set_best_channels (struct p2p_data*,int,int,int) ;

void wpas_p2p_update_best_channels(struct wpa_supplicant *wpa_s,
       int freq_24, int freq_5, int freq_overall)
{
 struct p2p_data *p2p = wpa_s->global->p2p;
 if (p2p == ((void*)0))
  return;
 p2p_set_best_channels(p2p, freq_24, freq_5, freq_overall);
}
