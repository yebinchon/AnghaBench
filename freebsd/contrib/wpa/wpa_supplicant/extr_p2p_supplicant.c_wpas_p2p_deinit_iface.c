
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {scalar_t__ p2p; struct wpa_supplicant* p2p_init_wpa_s; } ;


 int MSG_DEBUG ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpas_p2p_deinit_global (TYPE_1__*) ;

void wpas_p2p_deinit_iface(struct wpa_supplicant *wpa_s)
{
 if (wpa_s == wpa_s->global->p2p_init_wpa_s && wpa_s->global->p2p) {
  wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Disable P2P since removing "
   "the management interface is being removed");
  wpas_p2p_deinit_global(wpa_s->global);
 }
}
