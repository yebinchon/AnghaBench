
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int next_neighbor_rep_token; scalar_t__ notify_neighbor_rep; scalar_t__ rrm_used; } ;
struct wpa_supplicant {TYPE_1__ rrm; } ;


 int eloop_cancel_timeout (int (*) (TYPE_1__*,int *),TYPE_1__*,int *) ;
 int wpas_clear_beacon_rep_data (struct wpa_supplicant*) ;
 int wpas_rrm_neighbor_rep_timeout_handler (TYPE_1__*,int *) ;

void wpas_rrm_reset(struct wpa_supplicant *wpa_s)
{
 wpa_s->rrm.rrm_used = 0;

 eloop_cancel_timeout(wpas_rrm_neighbor_rep_timeout_handler, &wpa_s->rrm,
        ((void*)0));
 if (wpa_s->rrm.notify_neighbor_rep)
  wpas_rrm_neighbor_rep_timeout_handler(&wpa_s->rrm, ((void*)0));
 wpa_s->rrm.next_neighbor_rep_token = 1;
 wpas_clear_beacon_rep_data(wpa_s);
}
