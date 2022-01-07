
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {unsigned int max_remain_on_chan; TYPE_1__* global; } ;
struct TYPE_2__ {int p2p; } ;


 int p2p_listen (int ,unsigned int) ;

int wpas_p2p_listen_start(struct wpa_supplicant *wpa_s, unsigned int timeout)
{

 if (timeout > wpa_s->max_remain_on_chan)
  timeout = wpa_s->max_remain_on_chan;

 return p2p_listen(wpa_s->global->p2p, timeout);
}
