
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int p2p_sd_cancel_request (int *,void*) ;

int wpas_p2p_sd_cancel_request(struct wpa_supplicant *wpa_s, u64 req)
{
 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return -1;
 return p2p_sd_cancel_request(wpa_s->global->p2p,
         (void *) (uintptr_t) req);
}
