
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int p2p_ext_listen (int *,unsigned int,unsigned int) ;

int wpas_p2p_ext_listen(struct wpa_supplicant *wpa_s, unsigned int period,
   unsigned int interval)
{
 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return -1;

 return p2p_ext_listen(wpa_s->global->p2p, period, interval);
}
