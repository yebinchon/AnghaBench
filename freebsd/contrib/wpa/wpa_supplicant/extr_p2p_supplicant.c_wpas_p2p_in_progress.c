
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; int ifname; } ;
struct os_reltime {int dummy; } ;
struct TYPE_4__ {scalar_t__ sec; } ;
struct TYPE_3__ {TYPE_2__ p2p_go_wait_client; struct wpa_supplicant* p2p_group_formation; int * p2p; scalar_t__ p2p_disabled; } ;


 int MSG_DEBUG ;
 int P2P_MAX_INITIAL_CONN_WAIT_GO ;
 int os_get_reltime (struct os_reltime*) ;
 scalar_t__ os_reltime_expired (struct os_reltime*,TYPE_2__*,int ) ;
 int p2p_in_progress (int *) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;

int wpas_p2p_in_progress(struct wpa_supplicant *wpa_s)
{
 int ret;

 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return 0;

 ret = p2p_in_progress(wpa_s->global->p2p);
 if (ret == 0) {






  if (wpa_s->global->p2p_group_formation &&
      wpa_s->global->p2p_group_formation != wpa_s) {
   wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Another interface (%s) "
    "in group formation",
    wpa_s->global->p2p_group_formation->ifname);
   ret = 1;
  }
 }

 if (!ret && wpa_s->global->p2p_go_wait_client.sec) {
  struct os_reltime now;
  os_get_reltime(&now);
  if (os_reltime_expired(&now, &wpa_s->global->p2p_go_wait_client,
           P2P_MAX_INITIAL_CONN_WAIT_GO)) {

   wpa_s->global->p2p_go_wait_client.sec = 0;
  } else {
   wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Waiting for initial client connection during group formation");
   ret = 1;
  }
 }

 return ret;
}
