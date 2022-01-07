
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* global; scalar_t__ p2p_long_listen; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int p2p_reject (int *,int const*) ;

int wpas_p2p_reject(struct wpa_supplicant *wpa_s, const u8 *addr)
{
 wpa_s->p2p_long_listen = 0;

 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return -1;

 return p2p_reject(wpa_s->global->p2p, addr);
}
